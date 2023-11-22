#!/bin/sh

for item_path in "$@"; do

	# notify-send aaa "${item_path}"
	# continue

	item_dir=$(dirname "${item_path}}")
	item_name=$(basename "${item_path}")

	new_item_name=$(echo "${item_name}" | sed -E 's/:/ - /g; s/\s{2,}/ /g')
	new_item_path="${item_dir}/${new_item_name}"

	mv "${item_path}" "${new_item_path}"

done

exit 0