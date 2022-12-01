VERSION=$1

mkdir -p ../dumps/

echo "Download thwiki-${VERSION}-pages-articles.xml.bz2"
curl https://dumps.wikimedia.org/thwiki/${VERSION}/thwiki-${VERSION}-pages-articles.xml.bz2 \
--output ../dumps/thwiki-${VERSION}-pages-articles.xml.bz2