// valac --pkg gtk+-3.0 app.vala

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
        var main_window = new Gtk.ApplicationWindow (this);
        var layout = new Gtk.Grid();

        var button = new Gtk.Button.with_label ("Click me!");
        var hello_label = new Gtk.Label(null);

        var rotate_button = new Gtk.Button.with_label("Rotate");
        var rotate_label = new Gtk.Label("Horitzontal");

        grid.orientation = Gtk.Orientation.VERTICAL;
        layout.row_spacing = 6;
        grid.row_spacing = 6;

        layout.attach(button, 0, 0, 1, 1);
        layout.attach_next_to(hello_label, button, Gtk.PositionType.RIGHT, 1, 1);

        layout.attach(rotate_button, 0, 1, 1, 1);
        layout.attach_next_to(rotate_label, rotate_button, Gtk.PositionType.RIGHT, 1, 1);

        main_window.add(layout);

        // grid.add(button);
        // grid.add(label);
        //
        // main_window.add (grid);

        button.clicked.connect (() => {
            button.label = "Hello World!";
            button.sensitive = false;
        });

        rotate_button.clicked.connect( () => {
            rotate_label.angle = 90;
            rotate_label.label = "Vertical";
            rotate_label.sensitive = false;
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
