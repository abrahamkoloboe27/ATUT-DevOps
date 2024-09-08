#!/bin/bash
# Login to Scaleway container registry
echo $SCW_SECRET_KEY
echo $SCW_SECRET_KEY | docker login rg.fr-par.scw.cloud/atut-group-1 -u $SCW_SECRET_KEY --password-stdin
