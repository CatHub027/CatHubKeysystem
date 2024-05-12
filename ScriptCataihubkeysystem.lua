keys = [''.join(random.choices(string.ascii_letters + string.digits, k=10)) for _ in range(100)]

def check_key():
    entered_key = entry.get()
    if entered_key in keys:
        messagebox.showinfo("Access Granted", "Welcome to the UI!")
        # Add code here to open the UI
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
