package spp.lab.science.models;

import javax.persistence.*;
import java.io.Serializable;

@Entity
public class DocumentModel implements Serializable {
    @Id
    @GeneratedValue
    private Long id;

    @Column(nullable = false)
    private String name;

    @Column(nullable = false)
    private String content;

    protected DocumentModel() {}

    public DocumentModel(String name, String content)
    {
        this.name = name;
        this.content = content;
    }

    public Long getId()
    {
        return this.id;
    }

    public String getName()
    {
        return this.name;
    }

    public String getContent()
    {
        return this.content;
    }
}
