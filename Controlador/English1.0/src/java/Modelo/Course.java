/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Modelo;

public class Course {
    private int id;
    private String title;
    private String description;
    private String level;
    private String creationDate;

    // Constructor vacío
    public Course() {
    }

    // Constructor con todos los campos
    public Course(int id, String title, String description, String level, String creationDate) {
        this.id = id;
        this.title = title;
        this.description = description;
        this.level = level;
        this.creationDate = creationDate;
    }

    // Métodos getter y setter para cada campo
    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getLevel() {
        return level;
    }

    public void setLevel(String level) {
        this.level = level;
    }

    public String getCreationDate() {
        return creationDate;
    }

    public void setCreationDate(String creationDate) {
        this.creationDate = creationDate;
    }

    // Método toString para representación de texto del objeto
    @Override
    public String toString() {
        return "Course{" +
                "id=" + id +
                ", title='" + title + '\'' +
                ", description='" + description + '\'' +
                ", level='" + level + '\'' +
                ", creationDate='" + creationDate + '\'' +
                '}';
    }
}
