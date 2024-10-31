package com.swp.hg.dto;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class RatingDTO {
    private int rateID;
    private String comment;
    private int star;
    private int menteeID;
    private int mentorID;
}
