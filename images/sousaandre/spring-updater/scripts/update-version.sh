git clone https://"$GITHUB_USERNAME":"$GITHUB_PASSWORD"@"$REPOSITORY_URL" repo
cd repo || return
cd "$KUSTOMIZE_DIR" || return
kustomize edit set image "$IMAGE_NAME"="$IMAGE_NAME":"$IMAGE_TAG"
git config --global user.email "<>"
git config --global user.name "pipeline image updater"
git commit -am "automatic update of the $IMAGE_NAME image to tag $IMAGE_TAG"
git push origin master
