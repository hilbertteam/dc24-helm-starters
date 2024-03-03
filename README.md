# Helm starters
Starter templates for Helm.

This starter sets up everything you need to get a container running in Kubernetes correctly the first time.

## Starters

List of available starters:
- ``super-chart`` - the most universal starter with instances support. Use this one if in doubt.
- ``simple service`` - universal starter without instances support.
- ``standard`` - simplest starter for experiments and development.

## Installation

* Clone into `$helm-home/starters` or,
* Install with the [helm-starter](https://github.com/salesforce/helm-starter) plugin.
  * `helm plugin install https://github.com/salesforce/helm-starter.git`

## Usage

Create a helm chart from the starter:

```shell
helm create NAME --starter /path/to/catalog/helm-starter-chart/standard
```

You can render chart template and see the resulting manifest file:

```shell
helm template example standard --namespace development --dry-run --debug
```

## Update starters

```shell
helm starter update helm-starters
```
