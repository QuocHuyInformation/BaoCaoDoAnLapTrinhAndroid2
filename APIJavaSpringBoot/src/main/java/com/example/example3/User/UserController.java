package com.example.example3.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;




import lombok.AllArgsConstructor;

@RestController
@AllArgsConstructor
@RequestMapping("api/users")
@CrossOrigin(origins = "*", exposedHeaders = "Content-Range")
public class UserController {


  @Autowired
  private UserRepository userRepository ;


@PostMapping
public ResponseEntity<User> createUser(@RequestBody User User)
{
 try {

        final User savedUser = userRepository.save(User);
        return ResponseEntity.status(HttpStatus.CREATED).body(savedUser);
    } catch (Exception e) {
        return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR).build();
    }
}



 @GetMapping
    public ResponseEntity<Page<User>> getAllUsers(
            @RequestParam(name = "page", defaultValue = "0") int page,
            @RequestParam(name = "size", defaultValue = "10") int size) {
        Pageable pageable = PageRequest.of(page, size);
        Page<User> Users= userRepository.findAll(pageable);
        return new ResponseEntity<>(Users, HttpStatus.OK);
    }


     @GetMapping("{id}")
    public ResponseEntity<User> getCategoryById(@PathVariable Long id) {
           User Users = userRepository.findById(id) 
           .orElseThrow(() -> new ResourceNotFoundException("Product not found with id " + id));
                return ResponseEntity.ok(Users);
    }
   


    

  

    
}
