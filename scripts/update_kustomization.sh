#!/usr/bin/env bash
kustomization_files=$(find manifests/*/kustomization.yaml)

for f in $kustomization_files
do
    source_dir='dirname $f'
    rm $f
    sh -c 'cd $source_dir && kustomize create --autodetect'
done
