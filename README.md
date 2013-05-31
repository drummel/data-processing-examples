# Data Processing Examples

A quickstart to getting running with a few Stream and Batch processing frameworks across languages.

## Batch Processing with Hadoop

Hadoop is a set of utilities based around batchprocessing of information. To set up an individual developer machine can be done easily as long as a suitable JDK is already installed. For more information look at Apache Hadoop's [Single Node Setup Instructions](http://hadoop.apache.org/docs/stable/single_node_setup.html).

To get started, grab a copy of hadoop stable from a mirror and decompress it to a local directory which will become your ```$HADOOP_HOME```.

```bash
wget http://apache.tradebit.com/pub/hadoop/common/hadoop-1.1.2/hadoop-1.1.2-bin.tar.gz
tar -zxvf hadoop-1.1.2-bin.tar.gz
mkdir -p data/input
```

To reduce typing, you can add hadoop bin to your ```$PATH```.

```bash
export PATH=$PATH:./hadoop-1.1.2/bin
```

### Streaming Example

Hadoop streaming is not for real time stream processing, it is a way to use any language to create Map/Reduce jobs. For more information check the [Streaming Tutorial](http://hadoop.apache.org/docs/stable/streaming.html).

```bash
# Example from tutorial
hadoop jar ./hadoop-1.1.2/contrib/streaming/hadoop-streaming-1.1.2.jar -input data/input -output data/output -mapper /bin/cat -reducer /usr/bin/wc
```

After every run you will have to remove the output directory, otherwise there is a warning and stops you from running again.

```bash
# rm -R data/output
hadoop jar ./hadoop-1.1.2/contrib/streaming/hadoop-streaming-1.1.2.jar -input data/input -output data/output -mapper 'ruby map.rb' -reducer 'ruby reduce.rb' -file ./scripts/example_01/map.rb -file ./scripts/example_01/reduce.rb
```

### Pig

That was cool, but for doing fun experiments PIG can do much of the same stuff with less code and quicker. The jobs it creates are quite fast as well. The best example of using Pig can be found on [it's Wikipedia page](http://en.wikipedia.org/wiki/Pig_(programming_tool\)).

Just get it, uncompress it and things run.

```bash
wget http://apache.petsads.us/pig/stable/pig-0.11.1.tar.gz
tar -zxvf pig-0.11.1.tar.gz
```

To get a shell going, start it in local mode.

```bash
./pig-0.11.1/bin/pig -x local
```


### Alternate Hadoop Installation

For intro, the self install works well. When you need to use HDFS and get a better dev env going a good upgrade is the [Cloudera Installation](http://www.cloudera.com/content/support/en/documentation.html).

# Storm

Hadoop is fun, great for batch processing but fails with real time data. You can make jobs smaller and do in increments but that isn't what Hadoop and Map/Reduce was designed for. Instead try out Storm, it _is_ designed for stream processing and is very fast at it.

- [Storm's Main Github](https://github.com/nathanmarz/storm)
- [Good read on the rationale behind Storm](https://github.com/nathanmarz/storm/wiki/Rationale)
- [A starter kit to work with Storm](https://github.com/nathanmarz/storm-starter)

#Spark

The in-between is a relatively new project from Cal Berkeley call Spark. It does a good job at batch processing as well as a great job doing stream processing.

- [Spark's Main Page](http://spark-project.org/)
- [Examples for Spark](http://spark-project.org/examples/)
