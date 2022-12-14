import numpy as np
from finn.core.onnx_exec import execute_onnx
from qonnx.core.modelwrapper import ModelWrapper
from tensorflow.keras.datasets import cifar10
import pkg_resources as pk

(trainx, trainy), (testx, testy) = cifar10.load_data()

model = ModelWrapper("/media/brookz/Storage/Research/finn-examples/build/bnn-pynq/output_cnv-w1a2_Pynq-Z1/intermediate_models/step_tidy_up.onnx")
iname = model.graph.input[0].name
oname = model.graph.output[0].name
ishape = model.get_tensor_shape(iname)

corr = 0
incorr = 0

# fn = pk.resource_filename("finn.qnn-data", "cifar10/cifar10-test-data-class3.npz")
# x = np.load(fn)["arr_0"]

for x,y in zip(trainx,trainy):
    # x = x.reshape(3, 32,32).transpose(1, 2, 0)
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