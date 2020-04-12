## intro
a docker wrapper for [tfjs-converter](https://github.com/tensorflow/tfjs/blob/master/tfjs-converter/README.md)

## usage
1. download this repo
1. see comments in `Dockerfile`
1. put unconverted models under `models` folder
1. use it now: `docker-compose run --rm convert --input_format=keras ./models/xx.h5 /data/converted/xx`

ps: don't change entrypoint to `tensorflowjs_wizard` for convert, because some questions not needed for some file format convert and this will make convert fail. 

## todo
- [ ] image size is really big.
- [ ] how can i use environment variables in args such as `docker-compose run --rm convert --input_format=tf_hub $in/[name] $out/[name]`
