#!/bin/bash
# Login to Scaleway container registry
echo ${{ secrets.SCW_SECRET_KEY }}
echo ${{ secrets.SCW_SECRET_KEY }} | docker login rg.fr-par.scw.cloud/atut-group-1 -u ${{ secrets.SCW_SECRET_KEY }} --password-stdin
