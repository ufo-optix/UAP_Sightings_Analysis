# UAP Data Analysis and Event Correlation

**Correlation is not Causation, but it's a good start**

The wonderful people at [UPDB](https://updb.app/download) have opened source their full database. As such, I'm taking that data and running some analysis against it in order to enumerate potential correlational activity. 

## How to Use

I use docker to download and dump the UPDB database. The database is large and it's not uploaded to this git repository so you will have to download it yourself.

### Dump the Database to a CSV

final data will be located at `./out/uadb.csv`

1. `mkdir out && mkdir data`
2. `make build`
3. `make dump`


### Analyze the Data

It's all in the `analyze.ipynb` Notebook. 