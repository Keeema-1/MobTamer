import requests

total = 0
r = requests.get('https://api.github.com/repos/Keeema-1/MobTamer/releases')
for item in r.json():
    # print("tag_name: ", item["tag_name"])
    if (len(item["assets"])>0) and ("download_count" in item["assets"][0]):
        # print(item)
        print("name: ", item["name"])
        print("published_at: ", item["published_at"].split("T")[0])
        print("download count: ", item["assets"][0]["download_count"])
        total += item["assets"][0]["download_count"]
        print("")

print("total: ", total)