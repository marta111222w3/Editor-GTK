    /* -*- Mode: C; indent-tabs-mode: t; c-basic-offset: 4; tab-width: 4 -*- */
    /*
     * main.c
     * Copyright (C) EasyRPG Project 2011 <easyrpg@easy-rpg.org>
     *
     * easyrpg is free software: you can redistribute it and/or modify it
     * under the terms of the GNU General Public License as published by the
     * Free Software Foundation, either version 3 of the License, or
     * (at your option) any later version.
     *
     * easyrpg is distributed in the hope that it will be useful, but
     * WITHOUT ANY WARRANTY; without even the implied warranty of
     * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.
     * See the GNU General Public License for more details.
     *
     * You should have received a copy of the GNU General Public License along
     * with this program.  If not, see <http://www.gnu.org/licenses/>.
     */
     
    public class EasyRPG
    {
            MainWindow wMain;
     
            public EasyRPG ()
            {
                    this.wMain = new MainWindow();
            }
     
            public void start ()
            {
                    this.wMain.start();
            }
           
            public void on_destroy (Gtk.Widget window)
            {
                    Gtk.main_quit();
            }
     
            static int main (string[] args)
            {
                    Gtk.init (ref args);
                    var app = new EasyRPG ();
                    app.start ();
     
                    Gtk.main ();
                   
                    return 0;
            }
    }