// valac --pkg gtk+-3.0 Application.vala

using Gtk;

public class MyApp : Gtk.Application {

    public MyApp () {
        Object (
            application_id: "com.github.kaiwulf.catalog",
            flags: ApplicationFlags.FLAGS_NONE
        );
    }

    protected override void activate () {

        var grid = new Gtk.Grid();
        var button = new Gtk.Button.with_label ("Click me!");
        var main_window = new Gtk.ApplicationWindow (this);
        var label = new Gtk.Label(null);
        grid.orientation = Gtk.Orientation.VERTICAL;
        grid.row_spacing = 6;

        grid.add(button);
        grid.add(label);

        main_window.add (grid);

        button.clicked.connect (() => {
            button.label = "Hello World!";
            button.sensitive = false;
        });

        main_window.default_height = 300;
        main_window.default_width = 300;
        main_window.title = "Hello World";
        main_window.show_all ();
    }

    public static int main (string[] args) {

        var app = new MyApp ();
        return app.run (args);
    }
}
