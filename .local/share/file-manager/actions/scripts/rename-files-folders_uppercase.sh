#!/bin/sh

for item_path in "$@"; do

	item_dir=$(dirname "${item_path}}")
	item_name=$(basename "${item_path}")

	new_item_name=$(echo "${item_name}" | tr '[:lower:]' '[:upper:]')
	new_item_path="${item_dir}/${new_item_name}"

	mv "${item_path}" "${new_item_path}"

done

exit 0