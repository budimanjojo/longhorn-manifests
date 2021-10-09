#!/usr/bin/env bash
kustomization_1=./manifests/setup/kustomization.yaml
kustomization_2=./manifests/deploy/kustomization.yaml

rm $kustomization_1 $kustomization_2

sh -c 'cd manifests/setup && kustomize create --autodetect'
sh -c 'cd manifests/deploy && kustomize create --autodetect'
