import json

# Opening JSON file



if __name__ == '__main__' :
    f = open('output.json',)


    data = json.load(f)

    data['type'] = 'Chapter'
    data.pop('dartpad')
    data.pop('path')

    page_ls = data['children']
    print(len(page_ls))
    page_ls_filtered = [x for x in page_ls if x['type'] == 'folder']
    print(len(page_ls_filtered))


    data['dartpad'] = {}

    for page in page_ls_filtered:
        page['type'] = 'Page'
        page.pop('path')
        file_list = page['children']
        for file in file_list:
            file.pop('type')
            file.pop('path')
            file.pop('dartpad')

            if file['name'].endswith('note.txt'):
                page['content'] = file['contents']
                #page.pop('children')
            if file['name'].endswith('title.txt'):
                page['title'] = file['contents']
                #page.pop('children')
            if file['name'].endswith('.dart'):
                page.pop('children')


    data['children'] = page_ls_filtered
    # Closing file
    f.close()
    fo = open("output2.json", "w")
    fo.write(json.dumps(data, indent=2, sort_keys=False, ))
    fo.close()
