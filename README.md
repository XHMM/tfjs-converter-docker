## intro
a docker wrapper for [tfjs-converter](https://github.com/tensorflow/tfjs/blob/master/tfjs-converter/README.md)

## usage
1. download this repo
1. see comments in `Dockerfile`
1. put unconverted models under `models` folder
1. use it now: `docker-compose run --rm convert --input_format=keras --weight_shard_size_bytes 10485760  ./models/2020-04-13.h5 /data/converted/20200413`

### notes
- don't change entrypoint to `tensorflowjs_wizard` for convert, because some questions not needed for some file format convert and this will make convert fail.
- when using `tfjs-react-native`, `bundleResourceIO` currently not support multiple bin files load, you need to specify `--weight_shard_size_bytes=enoughBigBytes` to make it as one file. (default is 4M)
- when convert a model created with a layer from TF Hub, you may encounter this [issue](https://github.com/tensorflow/tfjs/issues/2000), you need to save python model using `tf.saved_model.save(model, "./xxx")` and convert it using `--input_format=tf_saved_model`

## todo
- [ ] image size is really big.
- [ ] how can i use environment variables in args such as `docker-compose run --rm convert --input_format=tf_hub $in/[name] $out/[name]`
