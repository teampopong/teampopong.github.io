build:
	jekyll build --config _config.yml

serve:
	jekyll serve --watch --config _config.yml,_config_dev.yml

deploy:
	# See http://drewsilcock.co.uk/custom-jekyll-plugins/
	jekyll build
	cd _site && \
		git add . && \
		git commit -m "Site updated at `date`" && \
		git push origin master && \
		echo "Successfully built and pushed to GitHub."
