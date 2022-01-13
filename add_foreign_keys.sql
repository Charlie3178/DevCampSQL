ALTER TABLE `devcamp_university`.`students` 
ADD CONSTRAINT `professor`
  FOREIGN KEY (`professor`)
  REFERENCES `devcamp_university`.`professors` (`name`)
  ON DELETE CASCADE
  ON UPDATE CASCADE,
ADD CONSTRAINT `grade`
  FOREIGN KEY (`grade`)
  REFERENCES `devcamp_university`.`grades` (`grade_points`)
  ON DELETE CASCADE
  ON UPDATE CASCADE;

ALTER TABLE `devcamp_university`.`professors` 
ADD CONSTRAINT `course`
  FOREIGN KEY (`course`)
  REFERENCES `devcamp_university`.`courses` (`title`)
  ON DELETE CASCADE
  ON UPDATE CASCADE;
  
ALTER TABLE `devcamp_university`.`courses` 
ADD CONSTRAINT `taught_by`
  FOREIGN KEY (`taught_by`)
  REFERENCES `devcamp_university`.`professors` (`name`)
  ON DELETE CASCADE
  ON UPDATE CASCADE 
;