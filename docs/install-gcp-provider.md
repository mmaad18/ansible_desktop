# Install the Google Cloud Platform (GCP) provider

    cat <<EOF | kubectl apply -f -
    apiVersion: pkg.crossplane.io/v1
    kind: Provider
    metadata:
        name: upbound-provider-gcp
    spec:
        package: xpkg.upbound.io/upbound/provider-gcp:v0.15.0
    EOF

