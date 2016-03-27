ElasticSearch Cluster for exploring and testing
===============================================

You need:

    - Vagrant >= 1.7

You get:

    - a 3 nodes ElasticSearch Cluster
    - the "head" plugin enabled by default on all cluster nodes
    - Kibana 4.4

Getting started
---------------

    ## be patient:
    vagrant up --no-provision && vagrant reload --provision

See your new cluster in action: http://172.31.20.11:9200/_plugin/head/


Access Kibana for nice visualization: http://172.31.20.10:5601


Cluster nodes
-------------

    - 172.31.20.11 (cc-esc-01-esn1)
    - 172.31.20.12 (cc-esc-02-esn2)
    - 172.31.20.13 (cc-esc-03-esn3)

Controlserver (Kibana)
----------------------

    - 172.31.20.10
