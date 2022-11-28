from sklearn.cluster import KMeans, DBSCAN
from sklearn.mixture import GaussianMixture
from sklearn.decomposition import PCA
import matplotlib.pyplot as plt
from sklearn.preprocessing import StandardScaler
from kneed import KneeLocator
from sklearn.metrics import silhouette_score
from sklearn.manifold import TSNE
import matplotlib.cm as cm
import numpy as np
# import umap


bram_to_layers = [  [(19,176)],
                    [(94,207),(94,197),(108,207),(108,202),(94,202 ),(19,202 ),(19,192 ),(108,192),(108,197),(108,187),(94,192 ),(94,187 ),(19,207 ),(19,197 ),(19,187 )],
                    [(94,166 ),(94,171 ),(94,161 ),(108,166),(108,171),(108,181),(108,176),(108,161)],
                    [(94,119 ),(108,124),(94,129 ),(108,135),(128,124),(128,119),(108,114),(128,114)],
                    [(108,140),(19,114 ),(94,124 ),(19,119),(94,135 ),(19,145 ),(94,145 ),(108,129),(94,140 ),(19,129 ),(19,135 ),(19,140 ),(19,150 ),(19,124 ),(94,150 )],
                    [(19,31),(19,36),(19,41),(19,46),(19,51),(19,57),(19,62),(19,67),(19,72),(19,109),(94,36),(94,41),(94,46),(94,51),(94,57),(94,62),(94,67),(94,72),(94,109),(108,57),(108,62),(108,67),(108,72),(108,77),(108,83),(108,88),(108,93),(128,67),(128,72),(128,77),(128,83),(128,88),(128,93)],
                    [(128,109),(128,98 ),(108,103),(128,103)],
                    [(19,83 ),(94,77 ),(19,98 ),(19,77 ),(94,88 ),(19,93 ),(19,103),(94,83 )],
                    [(19,161)]
]



def kmeans_clustering(xdata,enabledBrams):
    xScaled = StandardScaler().fit_transform(xdata)

    xPCA = PCA(2).fit_transform(xScaled)
    tsne = TSNE(n_components=2, verbose=1, random_state=123,perplexity=30)
    xScaledTSNE = tsne.fit_transform(xScaled)
    # xScaledUMAP = umap.UMAP().fit_transform(xScaled)

    xPreprocessed = xScaledTSNE
    kmeans_kwargs = {
        "init": "k-means++",
        "n_init": 100,
        "max_iter": 300,
        "random_state": 42,
    }

    sse = []
    silhouette = []
    ks = range(2,20)

    bramLayerDict = np.zeros(len(enabledBrams),np.uint8)
    for i,bram in enumerate(enabledBrams):
        bramStr = (bram.x,bram.y)
        for j,layer in enumerate(bram_to_layers):
            if bramStr in layer:
                bramLayerDict[i] = j

    # clusters = DBSCAN(min_samples=1).fit(xScaled)
    # labels = clusters.labels_

    fig,axs = plt.subplots(1,2,figsize=(10, 4))
    axs[0].set_title('KMeans Clustering')
    optimalK = 9
    kmeans = KMeans(n_clusters=optimalK, **kmeans_kwargs)
    kmeans.fit(xScaled)
    labels = kmeans.labels_

    colors = cm.rainbow(np.linspace(0, 1, optimalK))
    bins = []
    for i in range(optimalK):
        inds = np.argwhere(labels==i)
        axs[0].scatter(xPreprocessed[inds,0], xPreprocessed[inds,1], c=colors[i], label=i)
        bins.append([enabledBrams[k] for k in inds.flatten()])
    # plt.text()
    for i in range(len(xPreprocessed)):
        axs[0].annotate(f'{(enabledBrams[i].x,enabledBrams[i].y)}', (xPreprocessed[i,0], xPreprocessed[i,1]),fontsize=5)
    # plt.show()
    # fig,ax = plt.subplots()

    axs[1].set_title('Actual Layers')
    for i,cl in enumerate(bramLayerDict):
        axs[1].scatter(xPreprocessed[i,0],xPreprocessed[i,1],c=colors[cl])
        axs[1].annotate(f'{(enabledBrams[i].x,enabledBrams[i].y)}', (xPreprocessed[i,0], xPreprocessed[i,1]),fontsize=5)

    plt.show()



    # for k in ks:
    #     kmeans = KMeans(n_clusters=k, **kmeans_kwargs)
    #     kmeans.fit(xPreprocessed)
    #     sse.append(kmeans.inertia_)
    #     silhouette.append(silhouette_score(xPreprocessed, kmeans.labels_, metric = 'euclidean'))

    # # plt.plot(range(2,50),sse)
    # kl = KneeLocator(ks, sse, curve="convex", direction="decreasing")

    # elbow = list(kl.all_elbows)[0]
    # maxSil = np.argmax(silhouette)
    # fig, ax1 = plt.subplots()

    # ax2 = ax1.twinx()
    # ax1.plot(ks, sse, 'g-')
    # ax2.plot(ks, silhouette, 'b-')

    # ax1.scatter(elbow, sse[elbow-2], s=80, facecolors='none', edgecolors='r')
    # ax2.scatter(maxSil+2, silhouette[maxSil], s=80, facecolors='none', edgecolors='r')

    # ax1.set_xlabel('K-value')
    # ax1.set_ylabel('Sum of Squared Errors', color='g')
    # ax2.set_ylabel('Silhouette Score', color='b')

    # plt.xticks(ks)

    # # plt.plot(range(2,30),sse)
    # plt.show()
