## intro
a docker wrapper for [tfjs-converter](https://github.com/tensorflow/tfjs/blob/master/tfjs-converter/README.md)

## usage
1. see comments in `Dockerfile`
1. put unconverted models under `models` folder
1. `docker-compose run --rm convert --input_format=tf_hub ./models/[name] /data/converted/[name]`

warning: don't use `tensorflowjs_wizard` for convert, because some questions not needed for some file format convert and this will make convert fail. 

## todo
- [ ] image size is really big.
- [ ] publish to docker hub.
- [ ] how can i use environment variables in args such as `docker-compose run --rm convert --input_format=tf_hub $in/[name] $out/[name]`
