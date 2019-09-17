## Scala

### 데이터 순서를 바꾸어 처리하기

#### RDD 요소 정렬하기

```bash
scala> val textRDD = sc.textFile("/path/to/README.md")
scala> val wordCandidateRDD = textRDD.flatMap(_.split("[ ,.]"))
scala> val wordRDD = wordCandidateRDD.filter(_.matches("""\p{Alnum}+"""))
scala> val wordAndOnePairRDD = wordRDD.map((_, 1))
scala> val wordAndCountRDD = wordAndOnePairRDD.reduceByKey(_ + _)

scala> val countAndWordRDD = wordAndCountRDD.map { wordAndCount => 
         (wordAndCount._2, wordAndCount._1)
         }
```



#### sortByKey로 키 비교 구현

```bash
scala> val sortedCWRDD = countAndWordRDD.sortByKey(false)
scala> val sortedWCRDD = sortedCWRDD.map { countAndWord => 
        (countAndWord._2, countAndWord._1)
        }
scala> val sortedWCArray = sortedWCRDD.collect
scala> val sortedWCArray.foreach(prinln)

scala> val sortedWCRDD = sortedCWRDD.map {
        case (count, word) =>
        (word, count)
        }
*처음부터 3개 추출        
scala> val top3WordArray = sortedWCRDD.take(3)
scala> val top3WordArray.foreach(println)

```

