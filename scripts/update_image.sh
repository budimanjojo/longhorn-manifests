#!/usr/bin/env bash
version=$(cat upstream/version)
echo "current upstream version is $version"

files=$(find upstream/deploy/install/*/*.yaml)
master="master-head"
manager_image="longhornio\/longhorn-manager"
ui_image="longhornio\/longhorn-ui"
engine_image="longhornio\/longhorn-engine"

mkdir -p manifests/setup manifests/deploy
for f in $files
do
    sed -i "s/${manager_image}:${master}/${manager_image}:${version}/g" $f
    sed -i "s/${ui_image}:${master}/${ui_image}:${version}/g" $f
    sed -i "s/${engine_image}:${master}/${engine_image}:${version}/g" $f
    cp $f manifests/deploy/
done

# Move crds to their own directory
mv manifests/deploy/01-namespace.yaml manifests/setup/01-namespace.yaml
mv manifests/deploy/03-crd.yaml manifests/setup/02-crds.yaml
