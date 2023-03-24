<img
  src='https://carbonplan-assets.s3.amazonaws.com/monogram/dark-small.png'
  height='48'
/>

# carbonplan / envs


# Simplify PR
Current iteration takes env.yaml file(s) > combines them into conda-lock files, then creates docker iamges and publishes them. Conda-lock is failing to solve current environments.

Slimed down version:
- Multiple env.yaml file(s) per project -> combined into docker image -> pushed. No more conda-lock steps

## derisk
- Can a single env.yaml file create a docker img?
- can multiple env.yaml files be combined into a single file for a docker image
- should pangeo base image be used?



**curated compute environments**

[![GitHub][github-badge]][github]
![MIT License][]

[github]: https://github.com/carbonplan/envs
[github-badge]: https://badgen.net/badge/-/github?icon=github&label
[mit license]: https://badgen.net/badge/license/MIT/blue

This repository includes a collection of curated Docker and Conda environments.

## license

All the code in this repository is [MIT](https://choosealicense.com/licenses/mit/) licensed. When possible, the data used by this project is licensed using the [CC-BY-4.0](https://choosealicense.com/licenses/cc-by-4.0/) license. We include attribution and additional license information for third party datasets, and we request that you also maintain that attribution if using this data.

## about us

CarbonPlan is a non-profit organization that uses data and science for climate action. We aim to improve the transparency and scientific integrity of climate solutions with open data and tools. Find out more at [carbonplan.org](https://carbonplan.org/) or get in touch by [opening an issue](https://github.com/carbonplan/envs/issues/new) or [sending us an email](mailto:hello@carbonplan.org).
