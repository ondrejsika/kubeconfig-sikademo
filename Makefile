update-config:
	(cd .. && make save-config)
	cp ../kubeconfig.yml ./kubeconfig
	git commit -m "[auto] Update kubeconfig" kubeconfig
	git push
