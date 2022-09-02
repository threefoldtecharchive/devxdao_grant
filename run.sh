set -e

bash env.sh

pushd $DIR_CT/books
git pull
popd

for d in books/*/ ; do
    pushd $d
    bash run.sh
    popd
done

git add . && git commit -m "update."; git push

echo "****DONE****"