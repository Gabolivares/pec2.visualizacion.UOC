#PEC 2 VISUALIZACION

require(graphics); require(utils)


library(dendextend)
library(circlize)
# Se utilizan 3 grupos ya que hay 3 variables.
d <- dist(USArrests)
dend <- as.dendrogram(hclust(d))



circlize_dendrogram(dend,
                    labels_track_height = NA,
                    dend_track_height = 0.2
                    )

dend <- as.dendrogram(hclust(d))

