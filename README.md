## intro
a docker wrapper for [tfjs-converter](https://github.com/tensorflow/tfjs/blob/master/tfjs-converter/README.md)

## usage
1. download this repo
1. see comments in `Dockerfile`
1. put unconverted models under `models` folder
1. use it now: `docker-compose run --rm convert --input_format=keras --weight_shard_size_bytes 10485760  ./models/2020-04-13.h5 /data/converted/20200413`

### notes
- don't change entrypoint to `tensorflowjs_wizard` for convert, because some questions not needed for some file format convert and this will make convert fail.
- when `--input_format=keras`, you can omit `--output_format=xx`. ( `--output_format=tfjs_graph_model` may fail because as doc said: some layer types not supported currently with this format )
- when using `tfjs-react-native`, `bundleResourceIO` not support multiple bin files load, so you need to specify `--weight_shard_size_bytes=enoughBigBytes` to make it as one file. (default is 4M)

## todo
- [ ] image size is really big.
- [ ] how can i use environment variables in args such as `docker-compose run --rm convert --input_format=tf_hub $in/[name] $out/[name]`
