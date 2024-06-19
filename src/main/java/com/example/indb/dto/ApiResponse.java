package com.example.indb.dto;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.AllArgsConstructor;
import java.util.List;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class ApiResponse {
    private List<HotelData> data;
    private Meta meta;

    @Data
    @NoArgsConstructor
    @AllArgsConstructor
    public static class HotelData {
        private String chainCode;
        private String iataCode;
        private long dupeId;
        private String name;
        private String hotelId;
        private GeoCode geoCode;
        private Address address;
        private Distance distance;
        private String lastUpdate;
    }

    @Data
    @NoArgsConstructor
    @AllArgsConstructor
    public static class GeoCode {
        private double latitude;
        private double longitude;
    }

    @Data
    @NoArgsConstructor
    @AllArgsConstructor
    public static class Address {
        private String countryCode;
    }

    @Data
    @NoArgsConstructor
    @AllArgsConstructor
    public static class Distance {
        private double value;
        private String unit;
    }

    @Data
    @NoArgsConstructor
    @AllArgsConstructor
    public static class Meta {
        private int count;
        private Links links;

        @Data
        @NoArgsConstructor
        @AllArgsConstructor
        public static class Links {
            private String self;
        }
    }
}
