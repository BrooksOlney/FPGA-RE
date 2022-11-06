import onnx
from onnx import numpy_helper
import onnxruntime as ort
from tensorflow.keras.datasets import mnist, cifar10
# from finn.custom_op.general import *
# from finn.core.modelwrapper import ModelWrapper

def test_onnx_model(filename):
    dataset = 'mnist'

    if dataset == 'mnist':
        (trainx, trainy), (testx, testy) = mnist.load_data()

    elif dataset == 'cifar10':
        (trainx, trainy), (testx, testy) = cifar10.load_data()

    model = onnx.load(filename)
    # test = ModelWrapper(filename)
    ort_sess = ort.InferenceSession(filename)
    outputs = ort_sess.run(None, {'input': testx[0].numpy()})
    
    
    return

def load_onnx_model(filename):
    model = onnx.load(filename)
    inits = model.graph.initializer

    onnx_weights = {}
    for init in inits:
        W = numpy_helper.to_array(init)
        onnx_weights[init.name] = W

    return onnx_weights