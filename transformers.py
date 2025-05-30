# lets load a small model. Lets use distilbert/distilgpt2 as this is a small model.
from transformers import AutoModelForCausalLM, AutoTokenizer

model_name = "distilbert/distilgpt2"
tokenizer = AutoTokenizer.from_pretrained(model_name)
model = AutoModelForCausalLM.from_pretrained(model_name)
prompt = "The capital of France is"
response = model.generate(
    input_ids=tokenizer.encode(
        prompt, return_tensors="pt"
    ),  # encode the prompt text to tokens
    max_length=50,  # set a maximum length for the generated text.
)
# print the generated text
print(tokenizer.decode(response[0], skip_special_tokens=True))
