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
        var main_window = new Gtk.ApplicationWindow (this);
        var grid = new Gtk.Grid();
        grid.orientation = Gtk.Orientation.VERTICAL;
        grid.row_spacing = 6;

        var title_label = new Gtk.Label("Notifications");
        var show_button = new Gtk.Button.with_label("Show");

        grid.add(title_label);
        grid.add(show_button);

        main_window.default_height = 300;
        main_window.default_width = 300;
        main_window.title = "Hello World";
        main_window.add(grid);
        main_window.show_all ();
    }

    public static int main (string[] args) {

        var app = new MyApp ();
        return app.run (args);
    }
}
