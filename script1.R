lerArquivo <- function(caminho){
    caminhoArquivo <- paste("/home/ivan/dataScienceCoursera/dataScienceCoursera/specdata/", caminho, ".csv", sep="")
    con <- file(caminhoArquivo, "r")
    read.csv(con)
}

pollutantmean <- function(directory, pollutant, id = 1:332) {
    a <- lerArquivo(id)
    particle <- a[pollutant]
    aux <- is.na(particle)
    print(mean(particle[!aux]))
}