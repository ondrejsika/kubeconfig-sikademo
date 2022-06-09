update-config:
	(cd .. && make save-config)
	cat ../kubeconfig.yml | base64 > ./kubeconfig
	git commit -m "[auto] Update kubeconfig (base64)" kubeconfig
	git push
