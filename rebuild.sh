# Delete and Recreate
curl -XDELETE 'http://localhost:9200/landsat8'
curl -XPUT 'http://localhost:9200/landsat8/'

# Set mapping
curl -XPUT 'http://localhost:9200/landsat8/_mapping/scene' -d @mapping.json

# Load data
python load.py