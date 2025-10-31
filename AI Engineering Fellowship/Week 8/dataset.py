# This is a play space so I can understand how the dataset could look like
{
    "instruction": "……",
    "input": "……",
    "output": "……"
}

# What I found on Reddit
# That's just json format you enter, and not prompt format passed to the model. Json/jsonl/parquet files has to be parsed by the script later to insert a prompt format. Do you know if you format and parse the dataset to any particular template before giving it to the trainer to train the model on? If you're not formatting it, it's gonna give you bad results, since you're not using any prompt template. I suggest using chatml prompt format