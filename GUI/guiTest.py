import Tkinter
root = Tkinter.Tk()
root.title("Testing Tkinter")

print "This is where things will go"
text  = Tkinter.Text(root, width=20, height=5, highlightthickness=2)
	
text.bind('<KeyPress>', reportEvent)
	
text.pack(expand=1, fill="both")
text.focus_set()
root.mainloop()
this is not real
