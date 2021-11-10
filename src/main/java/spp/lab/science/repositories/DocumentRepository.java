package spp.lab.science.repositories;

import org.springframework.data.repository.*;
import spp.lab.science.models.DocumentModel;

public interface DocumentRepository extends CrudRepository<DocumentModel, Long> {

}
