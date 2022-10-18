#' @title get_term_matrix
#' @param  data information of data text
#' @return words matrix
#' @export
#' @import tm
#' @examples
#' \donttest{wordsMatrix <- get_term_matrix(text)}

get_term_matrix <- function(data) {
        # Build a corpus
        corp <- VCorpus(VectorSource(data))
        # Remove punctuation
        corp <-tm_map(corp,removePunctuation)
        # Convert to lowercase
        corp <- tm_map(corp,content_transformer(tolower))
        # Remove numbers
        corp <- tm_map(corp,removeNumbers)
        # Eliminate stop words
        corp <- tm_map(corp,removeWords, stopwords("english"))
        # Delete stop words
        corp <- tm_map(corp, function(x) removeWords(x,c(stopwords("SMART"))))

        # Extract word stems
        corp1<-tm_map(corp, stemDocument)

        # Define words that do not need to be counted
        keywords<-c("is","are","be","was","were","become","becomes","do","did","does","a","an","the",
                    "can","will","would","could","should","may","might","have","has",
                    "and","or","not","but","although","though","no","also","if","against","any",
                    "for","on","off","from","to","of","in","by","like","as","at","about","up","down",
                    "below","between","above","with",
                    "many","more","much","most","better","worse","worst","best","good","bad",
                    "it","them","its","their","we","you","our","this","that","these","those",
                    "what","when","where","how","which","whose","why",'ec','al',
                    "get","some","other","others")

        # Create entry - Document Matrix
        term.matrix <- TermDocumentMatrix(corp1,
                                          control = list(
                                                  wordLengths=c(0,Inf),
                                                  removePunctuation = list(preserve_intra_word_dashes = TRUE),
                                                  stopwords = keywords,
                                                  minWordLength = 1))

        term.matrix <- as.matrix(term.matrix)
        # Word frequency in descending order
        v <- data.frame(sort(rowSums(term.matrix),decreasing=TRUE))
        # Convert word stems into original words, respectively, the most frequent word,
        # The longest word, and the shortest word
        v$prevalent <- stemCompletion(rownames(v), corp, type = 'prevalent')
        v$longest <- stemCompletion(rownames(v), corp, type = 'longest')
        v$shortest <- stemCompletion(rownames(v), corp, type = 'shortest')
        colnames(v) <- c('freq', 'prevalent', 'longest', 'shortest')
        return(v)
}
