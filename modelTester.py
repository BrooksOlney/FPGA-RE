import numpy as np
from finn.core.onnx_exec import execute_onnx
from qonnx.core.modelwrapper import ModelWrapper
# from tensorflow.keras.datasets import cifar10
from dataset_loading import mnist, cifar
import pkg_resources as pk

# (trainx, trainy), (testx, testy) = cifar10.load_data()

dataset = 'mnist'

if dataset == 'mnist':
    trainx, trainy, testx, testy, valx, valy = mnist.load_mnist_data("/tmp", download=True, one_hot=False)

elif dataset == 'cifar10':
    trainx, trainy, testx, testy, valx, valy = cifar.load_cifar_data("/tmp", download=True, one_hot=False)

model = ModelWrapper("/media/brookz/Storage/Research/FPGA-RE/Models/tfc-w1a1.onnx")
# model = ModelWrapper("/media/brookz/Storage/Research/finn-examples/build/bnn-pynq/output_cnv-w1a2_Pynq-Z1/intermediate_models/step_tidy_up.onnx")
iname = model.graph.input[0].name
oname = model.graph.output[0].name
ishape = model.get_tensor_shape(iname)

corr = 0
incorr = 0

# fn = pk.resource_filename("finn.qnn-data", "cifar10/cifar10-test-data-class3.npz")
# x = np.load(fn)["arr_0"]

for x,y in zip(testx,testy):
    # x = x.reshape(3, 32,32).transpose(1, 2, 0)
    x = x.transpose(2,0,1)
    x = x.reshape(1,*x.shape)
    input_dict = {iname: x.astype(np.float32).reshape(ishape)}
    ret = execute_onnx(model, input_dict, False)
    ypred = ret[oname][0][0]
    if ypred == y:
        corr += 1
    else:
        incorr += 1
    # print(ret)
    print(f'YTrue = {y}\t\tYPred = {ypred}')
    # print(ret[oname])
    print(f'Corr = {corr}\t\tIncorr = {incorr}\n')


# print(ret)