##  MapReduce

1. hadoop의 yarn을 가동
   - start-yarn.sh
2. jps 사용해서 확인
   - master : ResourceManager
   - slave1 : NodeManager, DataNode, SecondaryNameNode
   - slave2 : NodeManager, DataNode
   - slave3 : NodeManager, DataNode
3.  파일 확인
   - yarn jar hadoop-mapreduce-examples-2.7.7.jar wordcount /edudata/파일명 /output/안겹치게 파일명 설정

