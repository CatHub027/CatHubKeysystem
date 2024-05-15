keys = [''.join(random.choices(string.ascii_letters + string.digits, k=10)) for _ in range(100)]

def check_key():
    entered_key = entry.get()
    if entered_key in keys:
        messagebox.showinfo("Access Granted", "Welcome to the UI!")
        
    else:
        messagebox.showerror("Access Denied", "Incorrect key!")

root = tk.Tk()
root.title("Key System UI")

label = tk.Label(root, text="Enter the key to access the UI:")
label.pack()

entry = tk.Entry(root, show="*")
entry.pack()

button = tk.Button(root, text="Submit", command=check_key)
button.pack()

root.mainloop()

local StarterGui = game:GetService("StarterGui")

wait(10)
StarterGui:SetCore("SendNotification", {
    Title = "Get key!"
    Text = "please Get key link"
    Duration = 10
    Button1 = "Copy"
    Button1 = "Discord Join"
    Callback = script.ButtonClicked
})

script.ButtonClicked.Invoke = function(buttonText)
if buttonText == "Copyboard to get check key" then
setclipboard("https://link-target.net/1169685/cataihub-key-system-1")

        elseif buttonText == "Discord Join" then
setclipboard("https://discord.gg/gR4EcQzC")
            
  end            
return         
  end
