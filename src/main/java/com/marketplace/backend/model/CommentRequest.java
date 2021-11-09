package com.marketplace.backend.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import lombok.Data;


@Data
public class CommentRequest {
    @JsonIgnore
    private Long id;
    private String message;
    
}

