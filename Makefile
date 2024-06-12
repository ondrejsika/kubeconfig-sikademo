update-config:
	(cd .. && make kubeconfig-get)
	cat ../kubeconfig.yml | base64 > ./kubeconfig
	git commit -m "[auto] Update kubeconfig (base64)" kubeconfig
	git push
