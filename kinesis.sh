export JAVA_HOME=/appserver/jdk1.7.0_67_64bit
export KINESIS_HOME=/home/temproot/amazon-kinesis-agent-master

LOG_HOME=/var/log/aws-kinesis-agent
AGENTJSON_HOME=/etc/aws-kinesis/



if [ ! -d "$LOG_HOME" ]; then
        mkdir $LOG_HOME

fi
if [ ! -d "$AGENTJSON_HOME" ]; then
        mkdir $AGENTJSON_HOME

fi
if [ ! -f "$AGENTJSON_HOME/agent.json" ]; then
	cp agent.json $AGENTJSON_HOME
fi

if [ "$1" == "build" ]; then
	./setup  --build
fi
if [ "$1" == "start" ]; then
	./run.sh
fi
