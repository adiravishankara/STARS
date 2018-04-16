import Tkinter
root = Tkinter.Tk()
root.title("Testing Tkinter")

<<<<<<< HEAD
print ("This is where things will go")
=======
print "This is where things will go"
text  = Tkinter.Text(root, width=20, height=5, highlightthickness=2)
	
text.bind('<KeyPress>', reportEvent)
	
text.pack(expand=1, fill="both")
text.focus_set()
>>>>>>> 971f3c865e22554ee784a008c6609193df18971b
root.mainloop()
