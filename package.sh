############################
# @author Elias De Hondt   #
# @see https://eliasdh.com #
# @since 22/11/2024        #
############################

rm -rf package
mkdir package
cd package
helm package ../filebeat/
helm package ../logstash/
helm package ../elasticsearch/
helm package ../kibana/
cd ..
helm repo index .