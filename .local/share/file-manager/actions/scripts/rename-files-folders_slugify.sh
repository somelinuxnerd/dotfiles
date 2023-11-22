#!/usr/bin/env bash

for item_path in "$@"; do

	item_dir=$(dirname "${item_path}}")
	item_name=$(basename "${item_path}")

	new_item_name=$(echo "${item_name}" | sed "s/'//g" | iconv -t ascii//TRANSLIT | sed -r s/[^a-zA-Z0-9\.]+/-/g | sed -r s/^-+\|-+$//g | tr '[:upper:]' '[:lower:]')

	new_item_path="${item_dir}/${new_item_name}"

	if [ ! -e "${new_item_path}" ]; then
		mv "${item_path}" "${new_item_path}"
	fi

done

exit 0