package spp.lab.science.repositories;

import org.springframework.data.repository.CrudRepository;
import spp.lab.science.models.UserModel;

import java.util.Optional;

public interface UserRepository extends CrudRepository<UserModel, Long> {
    UserModel findByUsername(String username);
}
