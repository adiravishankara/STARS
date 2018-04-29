import tkinter as tk


class App(tk.Tk):
    def __init__(self):
        super().__init__()
        self._create_widgets()
        self._display_widgets()

    def replace_btn_text(self):
        """ Replaces button's text with what's written in the entry.
        """
                                        # self._e.get() returns what's written in the
        self._b['text'] = self._e.get() # entry as a string, can be assigned to a var.

    def _create_widgets(self):
        self._e = tk.Entry(self)
        self._b = tk.Button(self, text="Replace me!", command=self.replace_btn_text)

    def _display_widgets(self):
        self._e.pack()
        self._b.pack()


if __name__ == '__main__':
    root = App()
    root.mainloop()

