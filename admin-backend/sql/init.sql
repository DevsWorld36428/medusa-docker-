/*
 Navicat Premium Data Transfer

 Source Server         : root
 Source Server Type    : PostgreSQL
 Source Server Version : 160001 (160001)
 Source Host           : localhost:5432
 Source Catalog        : medusa-R9m1
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 160001 (160001)
 File Encoding         : 65001

 Date: 27/04/2024 17:51:14
*/


-- ----------------------------
-- Type structure for PAYMENT_COLLECTION_STATUS_ENUM
-- ----------------------------
DROP TYPE IF EXISTS "public"."PAYMENT_COLLECTION_STATUS_ENUM";
CREATE TYPE "public"."PAYMENT_COLLECTION_STATUS_ENUM" AS ENUM (
  'not_paid',
  'awaiting',
  'authorized',
  'partially_authorized',
  'canceled'
);
ALTER TYPE "public"."PAYMENT_COLLECTION_STATUS_ENUM" OWNER TO "postgres";

-- ----------------------------
-- Type structure for PAYMENT_COLLECTION_TYPE_ENUM
-- ----------------------------
DROP TYPE IF EXISTS "public"."PAYMENT_COLLECTION_TYPE_ENUM";
CREATE TYPE "public"."PAYMENT_COLLECTION_TYPE_ENUM" AS ENUM (
  'order_edit'
);
ALTER TYPE "public"."PAYMENT_COLLECTION_TYPE_ENUM" OWNER TO "postgres";

-- ----------------------------
-- Type structure for cart_type_enum
-- ----------------------------
DROP TYPE IF EXISTS "public"."cart_type_enum";
CREATE TYPE "public"."cart_type_enum" AS ENUM (
  'default',
  'swap',
  'draft_order',
  'payment_link',
  'claim'
);
ALTER TYPE "public"."cart_type_enum" OWNER TO "postgres";

-- ----------------------------
-- Type structure for claim_item_reason_enum
-- ----------------------------
DROP TYPE IF EXISTS "public"."claim_item_reason_enum";
CREATE TYPE "public"."claim_item_reason_enum" AS ENUM (
  'missing_item',
  'wrong_item',
  'production_failure',
  'other'
);
ALTER TYPE "public"."claim_item_reason_enum" OWNER TO "postgres";

-- ----------------------------
-- Type structure for claim_order_fulfillment_status_enum
-- ----------------------------
DROP TYPE IF EXISTS "public"."claim_order_fulfillment_status_enum";
CREATE TYPE "public"."claim_order_fulfillment_status_enum" AS ENUM (
  'not_fulfilled',
  'partially_fulfilled',
  'fulfilled',
  'partially_shipped',
  'shipped',
  'partially_returned',
  'returned',
  'canceled',
  'requires_action'
);
ALTER TYPE "public"."claim_order_fulfillment_status_enum" OWNER TO "postgres";

-- ----------------------------
-- Type structure for claim_order_payment_status_enum
-- ----------------------------
DROP TYPE IF EXISTS "public"."claim_order_payment_status_enum";
CREATE TYPE "public"."claim_order_payment_status_enum" AS ENUM (
  'na',
  'not_refunded',
  'refunded'
);
ALTER TYPE "public"."claim_order_payment_status_enum" OWNER TO "postgres";

-- ----------------------------
-- Type structure for claim_order_type_enum
-- ----------------------------
DROP TYPE IF EXISTS "public"."claim_order_type_enum";
CREATE TYPE "public"."claim_order_type_enum" AS ENUM (
  'refund',
  'replace'
);
ALTER TYPE "public"."claim_order_type_enum" OWNER TO "postgres";

-- ----------------------------
-- Type structure for discount_condition_operator_enum
-- ----------------------------
DROP TYPE IF EXISTS "public"."discount_condition_operator_enum";
CREATE TYPE "public"."discount_condition_operator_enum" AS ENUM (
  'in',
  'not_in'
);
ALTER TYPE "public"."discount_condition_operator_enum" OWNER TO "postgres";

-- ----------------------------
-- Type structure for discount_condition_type_enum
-- ----------------------------
DROP TYPE IF EXISTS "public"."discount_condition_type_enum";
CREATE TYPE "public"."discount_condition_type_enum" AS ENUM (
  'products',
  'product_types',
  'product_collections',
  'product_tags',
  'customer_groups'
);
ALTER TYPE "public"."discount_condition_type_enum" OWNER TO "postgres";

-- ----------------------------
-- Type structure for discount_rule_allocation_enum
-- ----------------------------
DROP TYPE IF EXISTS "public"."discount_rule_allocation_enum";
CREATE TYPE "public"."discount_rule_allocation_enum" AS ENUM (
  'total',
  'item'
);
ALTER TYPE "public"."discount_rule_allocation_enum" OWNER TO "postgres";

-- ----------------------------
-- Type structure for discount_rule_type_enum
-- ----------------------------
DROP TYPE IF EXISTS "public"."discount_rule_type_enum";
CREATE TYPE "public"."discount_rule_type_enum" AS ENUM (
  'fixed',
  'percentage',
  'free_shipping'
);
ALTER TYPE "public"."discount_rule_type_enum" OWNER TO "postgres";

-- ----------------------------
-- Type structure for draft_order_status_enum
-- ----------------------------
DROP TYPE IF EXISTS "public"."draft_order_status_enum";
CREATE TYPE "public"."draft_order_status_enum" AS ENUM (
  'open',
  'completed'
);
ALTER TYPE "public"."draft_order_status_enum" OWNER TO "postgres";

-- ----------------------------
-- Type structure for gtrgm
-- ----------------------------
DROP TYPE IF EXISTS "public"."gtrgm";
CREATE TYPE "public"."gtrgm" (
  INPUT = "public"."gtrgm_in",
  OUTPUT = "public"."gtrgm_out",
  INTERNALLENGTH = VARIABLE,
  CATEGORY = U,
  DELIMITER = ','
);
ALTER TYPE "public"."gtrgm" OWNER TO "postgres";

-- ----------------------------
-- Type structure for invite_role_enum
-- ----------------------------
DROP TYPE IF EXISTS "public"."invite_role_enum";
CREATE TYPE "public"."invite_role_enum" AS ENUM (
  'admin',
  'member',
  'developer'
);
ALTER TYPE "public"."invite_role_enum" OWNER TO "postgres";

-- ----------------------------
-- Type structure for order_fulfillment_status_enum
-- ----------------------------
DROP TYPE IF EXISTS "public"."order_fulfillment_status_enum";
CREATE TYPE "public"."order_fulfillment_status_enum" AS ENUM (
  'not_fulfilled',
  'partially_fulfilled',
  'fulfilled',
  'partially_shipped',
  'shipped',
  'partially_returned',
  'returned',
  'canceled',
  'requires_action'
);
ALTER TYPE "public"."order_fulfillment_status_enum" OWNER TO "postgres";

-- ----------------------------
-- Type structure for order_item_change_type_enum
-- ----------------------------
DROP TYPE IF EXISTS "public"."order_item_change_type_enum";
CREATE TYPE "public"."order_item_change_type_enum" AS ENUM (
  'item_add',
  'item_remove',
  'item_update'
);
ALTER TYPE "public"."order_item_change_type_enum" OWNER TO "postgres";

-- ----------------------------
-- Type structure for order_payment_status_enum
-- ----------------------------
DROP TYPE IF EXISTS "public"."order_payment_status_enum";
CREATE TYPE "public"."order_payment_status_enum" AS ENUM (
  'not_paid',
  'awaiting',
  'captured',
  'partially_refunded',
  'refunded',
  'canceled',
  'requires_action'
);
ALTER TYPE "public"."order_payment_status_enum" OWNER TO "postgres";

-- ----------------------------
-- Type structure for order_status_enum
-- ----------------------------
DROP TYPE IF EXISTS "public"."order_status_enum";
CREATE TYPE "public"."order_status_enum" AS ENUM (
  'pending',
  'completed',
  'archived',
  'canceled',
  'requires_action'
);
ALTER TYPE "public"."order_status_enum" OWNER TO "postgres";

-- ----------------------------
-- Type structure for payment_session_status_enum
-- ----------------------------
DROP TYPE IF EXISTS "public"."payment_session_status_enum";
CREATE TYPE "public"."payment_session_status_enum" AS ENUM (
  'authorized',
  'pending',
  'requires_more',
  'error',
  'canceled'
);
ALTER TYPE "public"."payment_session_status_enum" OWNER TO "postgres";

-- ----------------------------
-- Type structure for price_list_status_enum
-- ----------------------------
DROP TYPE IF EXISTS "public"."price_list_status_enum";
CREATE TYPE "public"."price_list_status_enum" AS ENUM (
  'active',
  'draft'
);
ALTER TYPE "public"."price_list_status_enum" OWNER TO "postgres";

-- ----------------------------
-- Type structure for price_list_type_enum
-- ----------------------------
DROP TYPE IF EXISTS "public"."price_list_type_enum";
CREATE TYPE "public"."price_list_type_enum" AS ENUM (
  'sale',
  'override'
);
ALTER TYPE "public"."price_list_type_enum" OWNER TO "postgres";

-- ----------------------------
-- Type structure for product_status_enum
-- ----------------------------
DROP TYPE IF EXISTS "public"."product_status_enum";
CREATE TYPE "public"."product_status_enum" AS ENUM (
  'draft',
  'proposed',
  'published',
  'rejected'
);
ALTER TYPE "public"."product_status_enum" OWNER TO "postgres";

-- ----------------------------
-- Type structure for refund_reason_enum
-- ----------------------------
DROP TYPE IF EXISTS "public"."refund_reason_enum";
CREATE TYPE "public"."refund_reason_enum" AS ENUM (
  'discount',
  'return',
  'swap',
  'claim',
  'other'
);
ALTER TYPE "public"."refund_reason_enum" OWNER TO "postgres";

-- ----------------------------
-- Type structure for return_status_enum
-- ----------------------------
DROP TYPE IF EXISTS "public"."return_status_enum";
CREATE TYPE "public"."return_status_enum" AS ENUM (
  'requested',
  'received',
  'requires_action',
  'canceled'
);
ALTER TYPE "public"."return_status_enum" OWNER TO "postgres";

-- ----------------------------
-- Type structure for shipping_option_price_type_enum
-- ----------------------------
DROP TYPE IF EXISTS "public"."shipping_option_price_type_enum";
CREATE TYPE "public"."shipping_option_price_type_enum" AS ENUM (
  'flat_rate',
  'calculated'
);
ALTER TYPE "public"."shipping_option_price_type_enum" OWNER TO "postgres";

-- ----------------------------
-- Type structure for shipping_option_requirement_type_enum
-- ----------------------------
DROP TYPE IF EXISTS "public"."shipping_option_requirement_type_enum";
CREATE TYPE "public"."shipping_option_requirement_type_enum" AS ENUM (
  'min_subtotal',
  'max_subtotal'
);
ALTER TYPE "public"."shipping_option_requirement_type_enum" OWNER TO "postgres";

-- ----------------------------
-- Type structure for shipping_profile_type_enum
-- ----------------------------
DROP TYPE IF EXISTS "public"."shipping_profile_type_enum";
CREATE TYPE "public"."shipping_profile_type_enum" AS ENUM (
  'default',
  'gift_card',
  'custom'
);
ALTER TYPE "public"."shipping_profile_type_enum" OWNER TO "postgres";

-- ----------------------------
-- Type structure for swap_fulfillment_status_enum
-- ----------------------------
DROP TYPE IF EXISTS "public"."swap_fulfillment_status_enum";
CREATE TYPE "public"."swap_fulfillment_status_enum" AS ENUM (
  'not_fulfilled',
  'fulfilled',
  'shipped',
  'partially_shipped',
  'canceled',
  'requires_action'
);
ALTER TYPE "public"."swap_fulfillment_status_enum" OWNER TO "postgres";

-- ----------------------------
-- Type structure for swap_payment_status_enum
-- ----------------------------
DROP TYPE IF EXISTS "public"."swap_payment_status_enum";
CREATE TYPE "public"."swap_payment_status_enum" AS ENUM (
  'not_paid',
  'awaiting',
  'captured',
  'confirmed',
  'canceled',
  'difference_refunded',
  'partially_refunded',
  'refunded',
  'requires_action'
);
ALTER TYPE "public"."swap_payment_status_enum" OWNER TO "postgres";

-- ----------------------------
-- Type structure for user_role_enum
-- ----------------------------
DROP TYPE IF EXISTS "public"."user_role_enum";
CREATE TYPE "public"."user_role_enum" AS ENUM (
  'admin',
  'member',
  'developer'
);
ALTER TYPE "public"."user_role_enum" OWNER TO "postgres";

-- ----------------------------
-- Sequence structure for country_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."country_id_seq";
CREATE SEQUENCE "public"."country_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for draft_order_display_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."draft_order_display_id_seq";
CREATE SEQUENCE "public"."draft_order_display_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for migrations_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."migrations_id_seq";
CREATE SEQUENCE "public"."migrations_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for order_display_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."order_display_id_seq";
CREATE SEQUENCE "public"."order_display_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 2147483647
START 1
CACHE 1;

-- ----------------------------
-- Table structure for address
-- ----------------------------
DROP TABLE IF EXISTS "public"."address";
CREATE TABLE "public"."address" (
  "id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "customer_id" varchar COLLATE "pg_catalog"."default",
  "company" varchar COLLATE "pg_catalog"."default",
  "first_name" varchar COLLATE "pg_catalog"."default",
  "last_name" varchar COLLATE "pg_catalog"."default",
  "address_1" varchar COLLATE "pg_catalog"."default",
  "address_2" varchar COLLATE "pg_catalog"."default",
  "city" varchar COLLATE "pg_catalog"."default",
  "country_code" varchar COLLATE "pg_catalog"."default",
  "province" varchar COLLATE "pg_catalog"."default",
  "postal_code" varchar COLLATE "pg_catalog"."default",
  "phone" varchar COLLATE "pg_catalog"."default",
  "created_at" timestamptz(6) NOT NULL DEFAULT now(),
  "updated_at" timestamptz(6) NOT NULL DEFAULT now(),
  "deleted_at" timestamptz(6),
  "metadata" jsonb
)
;

-- ----------------------------
-- Records of address
-- ----------------------------

-- ----------------------------
-- Table structure for analytics_config
-- ----------------------------
DROP TABLE IF EXISTS "public"."analytics_config";
CREATE TABLE "public"."analytics_config" (
  "id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamptz(6) NOT NULL DEFAULT now(),
  "updated_at" timestamptz(6) NOT NULL DEFAULT now(),
  "deleted_at" timestamptz(6),
  "user_id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "opt_out" bool NOT NULL DEFAULT false,
  "anonymize" bool NOT NULL DEFAULT false
)
;

-- ----------------------------
-- Records of analytics_config
-- ----------------------------
INSERT INTO "public"."analytics_config" VALUES ('acfg_01HWG0F92D9TS7W5SA4TP1HX4Z', '2024-04-27 17:48:42.829407+03', '2024-04-27 17:48:42.829407+03', NULL, 'usr_01HWG0F8ZS2TRKJHJ2XTEHKXAJ', 't', 'f');

-- ----------------------------
-- Table structure for batch_job
-- ----------------------------
DROP TABLE IF EXISTS "public"."batch_job";
CREATE TABLE "public"."batch_job" (
  "id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "type" text COLLATE "pg_catalog"."default" NOT NULL,
  "created_by" varchar COLLATE "pg_catalog"."default",
  "context" jsonb,
  "result" jsonb,
  "dry_run" bool NOT NULL DEFAULT false,
  "created_at" timestamptz(6) NOT NULL DEFAULT now(),
  "pre_processed_at" timestamptz(6),
  "confirmed_at" timestamptz(6),
  "processing_at" timestamptz(6),
  "completed_at" timestamptz(6),
  "failed_at" timestamptz(6),
  "canceled_at" timestamptz(6),
  "updated_at" timestamptz(6) NOT NULL DEFAULT now(),
  "deleted_at" timestamptz(6)
)
;

-- ----------------------------
-- Records of batch_job
-- ----------------------------

-- ----------------------------
-- Table structure for cart
-- ----------------------------
DROP TABLE IF EXISTS "public"."cart";
CREATE TABLE "public"."cart" (
  "id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "email" varchar COLLATE "pg_catalog"."default",
  "billing_address_id" varchar COLLATE "pg_catalog"."default",
  "shipping_address_id" varchar COLLATE "pg_catalog"."default",
  "region_id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "customer_id" varchar COLLATE "pg_catalog"."default",
  "payment_id" varchar COLLATE "pg_catalog"."default",
  "type" "public"."cart_type_enum" NOT NULL DEFAULT 'default'::cart_type_enum,
  "completed_at" timestamptz(6),
  "created_at" timestamptz(6) NOT NULL DEFAULT now(),
  "updated_at" timestamptz(6) NOT NULL DEFAULT now(),
  "deleted_at" timestamptz(6),
  "metadata" jsonb,
  "idempotency_key" varchar COLLATE "pg_catalog"."default",
  "context" jsonb,
  "payment_authorized_at" timestamptz(6),
  "sales_channel_id" varchar COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of cart
-- ----------------------------

-- ----------------------------
-- Table structure for cart_discounts
-- ----------------------------
DROP TABLE IF EXISTS "public"."cart_discounts";
CREATE TABLE "public"."cart_discounts" (
  "cart_id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "discount_id" varchar COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of cart_discounts
-- ----------------------------

-- ----------------------------
-- Table structure for cart_gift_cards
-- ----------------------------
DROP TABLE IF EXISTS "public"."cart_gift_cards";
CREATE TABLE "public"."cart_gift_cards" (
  "cart_id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "gift_card_id" varchar COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of cart_gift_cards
-- ----------------------------

-- ----------------------------
-- Table structure for claim_image
-- ----------------------------
DROP TABLE IF EXISTS "public"."claim_image";
CREATE TABLE "public"."claim_image" (
  "id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "claim_item_id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "url" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamptz(6) NOT NULL DEFAULT now(),
  "updated_at" timestamptz(6) NOT NULL DEFAULT now(),
  "deleted_at" timestamptz(6),
  "metadata" jsonb
)
;

-- ----------------------------
-- Records of claim_image
-- ----------------------------

-- ----------------------------
-- Table structure for claim_item
-- ----------------------------
DROP TABLE IF EXISTS "public"."claim_item";
CREATE TABLE "public"."claim_item" (
  "id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "claim_order_id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "item_id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "variant_id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "reason" "public"."claim_item_reason_enum" NOT NULL,
  "note" varchar COLLATE "pg_catalog"."default",
  "quantity" int4 NOT NULL,
  "created_at" timestamptz(6) NOT NULL DEFAULT now(),
  "updated_at" timestamptz(6) NOT NULL DEFAULT now(),
  "deleted_at" timestamptz(6),
  "metadata" jsonb
)
;

-- ----------------------------
-- Records of claim_item
-- ----------------------------

-- ----------------------------
-- Table structure for claim_item_tags
-- ----------------------------
DROP TABLE IF EXISTS "public"."claim_item_tags";
CREATE TABLE "public"."claim_item_tags" (
  "item_id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "tag_id" varchar COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of claim_item_tags
-- ----------------------------

-- ----------------------------
-- Table structure for claim_order
-- ----------------------------
DROP TABLE IF EXISTS "public"."claim_order";
CREATE TABLE "public"."claim_order" (
  "id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "payment_status" "public"."claim_order_payment_status_enum" NOT NULL DEFAULT 'na'::claim_order_payment_status_enum,
  "fulfillment_status" "public"."claim_order_fulfillment_status_enum" NOT NULL DEFAULT 'not_fulfilled'::claim_order_fulfillment_status_enum,
  "type" "public"."claim_order_type_enum" NOT NULL,
  "order_id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "shipping_address_id" varchar COLLATE "pg_catalog"."default",
  "refund_amount" int4,
  "canceled_at" timestamptz(6),
  "created_at" timestamptz(6) NOT NULL DEFAULT now(),
  "updated_at" timestamptz(6) NOT NULL DEFAULT now(),
  "deleted_at" timestamptz(6),
  "metadata" jsonb,
  "idempotency_key" varchar COLLATE "pg_catalog"."default",
  "no_notification" bool
)
;

-- ----------------------------
-- Records of claim_order
-- ----------------------------

-- ----------------------------
-- Table structure for claim_tag
-- ----------------------------
DROP TABLE IF EXISTS "public"."claim_tag";
CREATE TABLE "public"."claim_tag" (
  "id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "value" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamptz(6) NOT NULL DEFAULT now(),
  "updated_at" timestamptz(6) NOT NULL DEFAULT now(),
  "deleted_at" timestamptz(6),
  "metadata" jsonb
)
;

-- ----------------------------
-- Records of claim_tag
-- ----------------------------

-- ----------------------------
-- Table structure for country
-- ----------------------------
DROP TABLE IF EXISTS "public"."country";
CREATE TABLE "public"."country" (
  "id" int4 NOT NULL DEFAULT nextval('country_id_seq'::regclass),
  "iso_2" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "iso_3" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "num_code" int4 NOT NULL,
  "name" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "display_name" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "region_id" varchar COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of country
-- ----------------------------
INSERT INTO "public"."country" VALUES (1, 'af', 'afg', 4, 'AFGHANISTAN', 'Afghanistan', NULL);
INSERT INTO "public"."country" VALUES (2, 'al', 'alb', 8, 'ALBANIA', 'Albania', NULL);
INSERT INTO "public"."country" VALUES (3, 'dz', 'dza', 12, 'ALGERIA', 'Algeria', NULL);
INSERT INTO "public"."country" VALUES (4, 'as', 'asm', 16, 'AMERICAN SAMOA', 'American Samoa', NULL);
INSERT INTO "public"."country" VALUES (5, 'ad', 'and', 20, 'ANDORRA', 'Andorra', NULL);
INSERT INTO "public"."country" VALUES (6, 'ao', 'ago', 24, 'ANGOLA', 'Angola', NULL);
INSERT INTO "public"."country" VALUES (7, 'ai', 'aia', 660, 'ANGUILLA', 'Anguilla', NULL);
INSERT INTO "public"."country" VALUES (8, 'aq', 'ata', 10, 'ANTARCTICA', 'Antarctica', NULL);
INSERT INTO "public"."country" VALUES (9, 'ag', 'atg', 28, 'ANTIGUA AND BARBUDA', 'Antigua and Barbuda', NULL);
INSERT INTO "public"."country" VALUES (10, 'ar', 'arg', 32, 'ARGENTINA', 'Argentina', NULL);
INSERT INTO "public"."country" VALUES (11, 'am', 'arm', 51, 'ARMENIA', 'Armenia', NULL);
INSERT INTO "public"."country" VALUES (12, 'aw', 'abw', 533, 'ARUBA', 'Aruba', NULL);
INSERT INTO "public"."country" VALUES (13, 'au', 'aus', 36, 'AUSTRALIA', 'Australia', NULL);
INSERT INTO "public"."country" VALUES (14, 'at', 'aut', 40, 'AUSTRIA', 'Austria', NULL);
INSERT INTO "public"."country" VALUES (15, 'az', 'aze', 31, 'AZERBAIJAN', 'Azerbaijan', NULL);
INSERT INTO "public"."country" VALUES (16, 'bs', 'bhs', 44, 'BAHAMAS', 'Bahamas', NULL);
INSERT INTO "public"."country" VALUES (17, 'bh', 'bhr', 48, 'BAHRAIN', 'Bahrain', NULL);
INSERT INTO "public"."country" VALUES (18, 'bd', 'bgd', 50, 'BANGLADESH', 'Bangladesh', NULL);
INSERT INTO "public"."country" VALUES (19, 'bb', 'brb', 52, 'BARBADOS', 'Barbados', NULL);
INSERT INTO "public"."country" VALUES (20, 'by', 'blr', 112, 'BELARUS', 'Belarus', NULL);
INSERT INTO "public"."country" VALUES (21, 'be', 'bel', 56, 'BELGIUM', 'Belgium', NULL);
INSERT INTO "public"."country" VALUES (22, 'bz', 'blz', 84, 'BELIZE', 'Belize', NULL);
INSERT INTO "public"."country" VALUES (23, 'bj', 'ben', 204, 'BENIN', 'Benin', NULL);
INSERT INTO "public"."country" VALUES (24, 'bm', 'bmu', 60, 'BERMUDA', 'Bermuda', NULL);
INSERT INTO "public"."country" VALUES (25, 'bt', 'btn', 64, 'BHUTAN', 'Bhutan', NULL);
INSERT INTO "public"."country" VALUES (26, 'bo', 'bol', 68, 'BOLIVIA', 'Bolivia', NULL);
INSERT INTO "public"."country" VALUES (27, 'bq', 'bes', 535, 'BONAIRE, SINT EUSTATIUS AND SABA', 'Bonaire, Sint Eustatius and Saba', NULL);
INSERT INTO "public"."country" VALUES (28, 'ba', 'bih', 70, 'BOSNIA AND HERZEGOVINA', 'Bosnia and Herzegovina', NULL);
INSERT INTO "public"."country" VALUES (29, 'bw', 'bwa', 72, 'BOTSWANA', 'Botswana', NULL);
INSERT INTO "public"."country" VALUES (30, 'bv', 'bvd', 74, 'BOUVET ISLAND', 'Bouvet Island', NULL);
INSERT INTO "public"."country" VALUES (31, 'br', 'bra', 76, 'BRAZIL', 'Brazil', NULL);
INSERT INTO "public"."country" VALUES (32, 'io', 'iot', 86, 'BRITISH INDIAN OCEAN TERRITORY', 'British Indian Ocean Territory', NULL);
INSERT INTO "public"."country" VALUES (33, 'bn', 'brn', 96, 'BRUNEI DARUSSALAM', 'Brunei Darussalam', NULL);
INSERT INTO "public"."country" VALUES (34, 'bg', 'bgr', 100, 'BULGARIA', 'Bulgaria', NULL);
INSERT INTO "public"."country" VALUES (35, 'bf', 'bfa', 854, 'BURKINA FASO', 'Burkina Faso', NULL);
INSERT INTO "public"."country" VALUES (36, 'bi', 'bdi', 108, 'BURUNDI', 'Burundi', NULL);
INSERT INTO "public"."country" VALUES (37, 'kh', 'khm', 116, 'CAMBODIA', 'Cambodia', NULL);
INSERT INTO "public"."country" VALUES (38, 'cm', 'cmr', 120, 'CAMEROON', 'Cameroon', NULL);
INSERT INTO "public"."country" VALUES (40, 'cv', 'cpv', 132, 'CAPE VERDE', 'Cape Verde', NULL);
INSERT INTO "public"."country" VALUES (41, 'ky', 'cym', 136, 'CAYMAN ISLANDS', 'Cayman Islands', NULL);
INSERT INTO "public"."country" VALUES (42, 'cf', 'caf', 140, 'CENTRAL AFRICAN REPUBLIC', 'Central African Republic', NULL);
INSERT INTO "public"."country" VALUES (43, 'td', 'tcd', 148, 'CHAD', 'Chad', NULL);
INSERT INTO "public"."country" VALUES (44, 'cl', 'chl', 152, 'CHILE', 'Chile', NULL);
INSERT INTO "public"."country" VALUES (45, 'cn', 'chn', 156, 'CHINA', 'China', NULL);
INSERT INTO "public"."country" VALUES (46, 'cx', 'cxr', 162, 'CHRISTMAS ISLAND', 'Christmas Island', NULL);
INSERT INTO "public"."country" VALUES (47, 'cc', 'cck', 166, 'COCOS (KEELING) ISLANDS', 'Cocos (Keeling) Islands', NULL);
INSERT INTO "public"."country" VALUES (48, 'co', 'col', 170, 'COLOMBIA', 'Colombia', NULL);
INSERT INTO "public"."country" VALUES (49, 'km', 'com', 174, 'COMOROS', 'Comoros', NULL);
INSERT INTO "public"."country" VALUES (50, 'cg', 'cog', 178, 'CONGO', 'Congo', NULL);
INSERT INTO "public"."country" VALUES (51, 'cd', 'cod', 180, 'CONGO, THE DEMOCRATIC REPUBLIC OF THE', 'Congo, the Democratic Republic of the', NULL);
INSERT INTO "public"."country" VALUES (52, 'ck', 'cok', 184, 'COOK ISLANDS', 'Cook Islands', NULL);
INSERT INTO "public"."country" VALUES (53, 'cr', 'cri', 188, 'COSTA RICA', 'Costa Rica', NULL);
INSERT INTO "public"."country" VALUES (54, 'ci', 'civ', 384, 'COTE D''IVOIRE', 'Cote D''Ivoire', NULL);
INSERT INTO "public"."country" VALUES (55, 'hr', 'hrv', 191, 'CROATIA', 'Croatia', NULL);
INSERT INTO "public"."country" VALUES (56, 'cu', 'cub', 192, 'CUBA', 'Cuba', NULL);
INSERT INTO "public"."country" VALUES (57, 'cw', 'cuw', 531, 'CURAÇAO', 'Curaçao', NULL);
INSERT INTO "public"."country" VALUES (58, 'cy', 'cyp', 196, 'CYPRUS', 'Cyprus', NULL);
INSERT INTO "public"."country" VALUES (59, 'cz', 'cze', 203, 'CZECH REPUBLIC', 'Czech Republic', NULL);
INSERT INTO "public"."country" VALUES (61, 'dj', 'dji', 262, 'DJIBOUTI', 'Djibouti', NULL);
INSERT INTO "public"."country" VALUES (62, 'dm', 'dma', 212, 'DOMINICA', 'Dominica', NULL);
INSERT INTO "public"."country" VALUES (63, 'do', 'dom', 214, 'DOMINICAN REPUBLIC', 'Dominican Republic', NULL);
INSERT INTO "public"."country" VALUES (64, 'ec', 'ecu', 218, 'ECUADOR', 'Ecuador', NULL);
INSERT INTO "public"."country" VALUES (65, 'eg', 'egy', 818, 'EGYPT', 'Egypt', NULL);
INSERT INTO "public"."country" VALUES (66, 'sv', 'slv', 222, 'EL SALVADOR', 'El Salvador', NULL);
INSERT INTO "public"."country" VALUES (67, 'gq', 'gnq', 226, 'EQUATORIAL GUINEA', 'Equatorial Guinea', NULL);
INSERT INTO "public"."country" VALUES (68, 'er', 'eri', 232, 'ERITREA', 'Eritrea', NULL);
INSERT INTO "public"."country" VALUES (69, 'ee', 'est', 233, 'ESTONIA', 'Estonia', NULL);
INSERT INTO "public"."country" VALUES (70, 'et', 'eth', 231, 'ETHIOPIA', 'Ethiopia', NULL);
INSERT INTO "public"."country" VALUES (71, 'fk', 'flk', 238, 'FALKLAND ISLANDS (MALVINAS)', 'Falkland Islands (Malvinas)', NULL);
INSERT INTO "public"."country" VALUES (72, 'fo', 'fro', 234, 'FAROE ISLANDS', 'Faroe Islands', NULL);
INSERT INTO "public"."country" VALUES (73, 'fj', 'fji', 242, 'FIJI', 'Fiji', NULL);
INSERT INTO "public"."country" VALUES (74, 'fi', 'fin', 246, 'FINLAND', 'Finland', NULL);
INSERT INTO "public"."country" VALUES (76, 'gf', 'guf', 254, 'FRENCH GUIANA', 'French Guiana', NULL);
INSERT INTO "public"."country" VALUES (77, 'pf', 'pyf', 258, 'FRENCH POLYNESIA', 'French Polynesia', NULL);
INSERT INTO "public"."country" VALUES (78, 'tf', 'atf', 260, 'FRENCH SOUTHERN TERRITORIES', 'French Southern Territories', NULL);
INSERT INTO "public"."country" VALUES (79, 'ga', 'gab', 266, 'GABON', 'Gabon', NULL);
INSERT INTO "public"."country" VALUES (80, 'gm', 'gmb', 270, 'GAMBIA', 'Gambia', NULL);
INSERT INTO "public"."country" VALUES (81, 'ge', 'geo', 268, 'GEORGIA', 'Georgia', NULL);
INSERT INTO "public"."country" VALUES (83, 'gh', 'gha', 288, 'GHANA', 'Ghana', NULL);
INSERT INTO "public"."country" VALUES (84, 'gi', 'gib', 292, 'GIBRALTAR', 'Gibraltar', NULL);
INSERT INTO "public"."country" VALUES (85, 'gr', 'grc', 300, 'GREECE', 'Greece', NULL);
INSERT INTO "public"."country" VALUES (86, 'gl', 'grl', 304, 'GREENLAND', 'Greenland', NULL);
INSERT INTO "public"."country" VALUES (87, 'gd', 'grd', 308, 'GRENADA', 'Grenada', NULL);
INSERT INTO "public"."country" VALUES (88, 'gp', 'glp', 312, 'GUADELOUPE', 'Guadeloupe', NULL);
INSERT INTO "public"."country" VALUES (89, 'gu', 'gum', 316, 'GUAM', 'Guam', NULL);
INSERT INTO "public"."country" VALUES (90, 'gt', 'gtm', 320, 'GUATEMALA', 'Guatemala', NULL);
INSERT INTO "public"."country" VALUES (91, 'gg', 'ggy', 831, 'GUERNSEY', 'Guernsey', NULL);
INSERT INTO "public"."country" VALUES (92, 'gn', 'gin', 324, 'GUINEA', 'Guinea', NULL);
INSERT INTO "public"."country" VALUES (93, 'gw', 'gnb', 624, 'GUINEA-BISSAU', 'Guinea-Bissau', NULL);
INSERT INTO "public"."country" VALUES (94, 'gy', 'guy', 328, 'GUYANA', 'Guyana', NULL);
INSERT INTO "public"."country" VALUES (95, 'ht', 'hti', 332, 'HAITI', 'Haiti', NULL);
INSERT INTO "public"."country" VALUES (96, 'hm', 'hmd', 334, 'HEARD ISLAND AND MCDONALD ISLANDS', 'Heard Island And Mcdonald Islands', NULL);
INSERT INTO "public"."country" VALUES (97, 'va', 'vat', 336, 'HOLY SEE (VATICAN CITY STATE)', 'Holy See (Vatican City State)', NULL);
INSERT INTO "public"."country" VALUES (98, 'hn', 'hnd', 340, 'HONDURAS', 'Honduras', NULL);
INSERT INTO "public"."country" VALUES (99, 'hk', 'hkg', 344, 'HONG KONG', 'Hong Kong', NULL);
INSERT INTO "public"."country" VALUES (100, 'hu', 'hun', 348, 'HUNGARY', 'Hungary', NULL);
INSERT INTO "public"."country" VALUES (101, 'is', 'isl', 352, 'ICELAND', 'Iceland', NULL);
INSERT INTO "public"."country" VALUES (102, 'in', 'ind', 356, 'INDIA', 'India', NULL);
INSERT INTO "public"."country" VALUES (103, 'id', 'idn', 360, 'INDONESIA', 'Indonesia', NULL);
INSERT INTO "public"."country" VALUES (104, 'ir', 'irn', 364, 'IRAN, ISLAMIC REPUBLIC OF', 'Iran, Islamic Republic of', NULL);
INSERT INTO "public"."country" VALUES (105, 'iq', 'irq', 368, 'IRAQ', 'Iraq', NULL);
INSERT INTO "public"."country" VALUES (106, 'ie', 'irl', 372, 'IRELAND', 'Ireland', NULL);
INSERT INTO "public"."country" VALUES (107, 'im', 'imn', 833, 'ISLE OF MAN', 'Isle Of Man', NULL);
INSERT INTO "public"."country" VALUES (108, 'il', 'isr', 376, 'ISRAEL', 'Israel', NULL);
INSERT INTO "public"."country" VALUES (110, 'jm', 'jam', 388, 'JAMAICA', 'Jamaica', NULL);
INSERT INTO "public"."country" VALUES (111, 'jp', 'jpn', 392, 'JAPAN', 'Japan', NULL);
INSERT INTO "public"."country" VALUES (112, 'je', 'jey', 832, 'JERSEY', 'Jersey', NULL);
INSERT INTO "public"."country" VALUES (113, 'jo', 'jor', 400, 'JORDAN', 'Jordan', NULL);
INSERT INTO "public"."country" VALUES (114, 'kz', 'kaz', 398, 'KAZAKHSTAN', 'Kazakhstan', NULL);
INSERT INTO "public"."country" VALUES (115, 'ke', 'ken', 404, 'KENYA', 'Kenya', NULL);
INSERT INTO "public"."country" VALUES (116, 'ki', 'kir', 296, 'KIRIBATI', 'Kiribati', NULL);
INSERT INTO "public"."country" VALUES (117, 'kp', 'prk', 408, 'KOREA, DEMOCRATIC PEOPLE''S REPUBLIC OF', 'Korea, Democratic People''s Republic of', NULL);
INSERT INTO "public"."country" VALUES (118, 'kr', 'kor', 410, 'KOREA, REPUBLIC OF', 'Korea, Republic of', NULL);
INSERT INTO "public"."country" VALUES (119, 'xk', 'xkx', 900, 'KOSOVO', 'Kosovo', NULL);
INSERT INTO "public"."country" VALUES (120, 'kw', 'kwt', 414, 'KUWAIT', 'Kuwait', NULL);
INSERT INTO "public"."country" VALUES (121, 'kg', 'kgz', 417, 'KYRGYZSTAN', 'Kyrgyzstan', NULL);
INSERT INTO "public"."country" VALUES (122, 'la', 'lao', 418, 'LAO PEOPLE''S DEMOCRATIC REPUBLIC', 'Lao People''s Democratic Republic', NULL);
INSERT INTO "public"."country" VALUES (123, 'lv', 'lva', 428, 'LATVIA', 'Latvia', NULL);
INSERT INTO "public"."country" VALUES (124, 'lb', 'lbn', 422, 'LEBANON', 'Lebanon', NULL);
INSERT INTO "public"."country" VALUES (125, 'ls', 'lso', 426, 'LESOTHO', 'Lesotho', NULL);
INSERT INTO "public"."country" VALUES (126, 'lr', 'lbr', 430, 'LIBERIA', 'Liberia', NULL);
INSERT INTO "public"."country" VALUES (127, 'ly', 'lby', 434, 'LIBYA', 'Libya', NULL);
INSERT INTO "public"."country" VALUES (128, 'li', 'lie', 438, 'LIECHTENSTEIN', 'Liechtenstein', NULL);
INSERT INTO "public"."country" VALUES (129, 'lt', 'ltu', 440, 'LITHUANIA', 'Lithuania', NULL);
INSERT INTO "public"."country" VALUES (130, 'lu', 'lux', 442, 'LUXEMBOURG', 'Luxembourg', NULL);
INSERT INTO "public"."country" VALUES (131, 'mo', 'mac', 446, 'MACAO', 'Macao', NULL);
INSERT INTO "public"."country" VALUES (132, 'mk', 'mkd', 807, 'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF', 'Macedonia, the Former Yugoslav Republic of', NULL);
INSERT INTO "public"."country" VALUES (133, 'mg', 'mdg', 450, 'MADAGASCAR', 'Madagascar', NULL);
INSERT INTO "public"."country" VALUES (134, 'mw', 'mwi', 454, 'MALAWI', 'Malawi', NULL);
INSERT INTO "public"."country" VALUES (135, 'my', 'mys', 458, 'MALAYSIA', 'Malaysia', NULL);
INSERT INTO "public"."country" VALUES (136, 'mv', 'mdv', 462, 'MALDIVES', 'Maldives', NULL);
INSERT INTO "public"."country" VALUES (137, 'ml', 'mli', 466, 'MALI', 'Mali', NULL);
INSERT INTO "public"."country" VALUES (138, 'mt', 'mlt', 470, 'MALTA', 'Malta', NULL);
INSERT INTO "public"."country" VALUES (139, 'mh', 'mhl', 584, 'MARSHALL ISLANDS', 'Marshall Islands', NULL);
INSERT INTO "public"."country" VALUES (140, 'mq', 'mtq', 474, 'MARTINIQUE', 'Martinique', NULL);
INSERT INTO "public"."country" VALUES (141, 'mr', 'mrt', 478, 'MAURITANIA', 'Mauritania', NULL);
INSERT INTO "public"."country" VALUES (142, 'mu', 'mus', 480, 'MAURITIUS', 'Mauritius', NULL);
INSERT INTO "public"."country" VALUES (143, 'yt', 'myt', 175, 'MAYOTTE', 'Mayotte', NULL);
INSERT INTO "public"."country" VALUES (144, 'mx', 'mex', 484, 'MEXICO', 'Mexico', NULL);
INSERT INTO "public"."country" VALUES (145, 'fm', 'fsm', 583, 'MICRONESIA, FEDERATED STATES OF', 'Micronesia, Federated States of', NULL);
INSERT INTO "public"."country" VALUES (146, 'md', 'mda', 498, 'MOLDOVA, REPUBLIC OF', 'Moldova, Republic of', NULL);
INSERT INTO "public"."country" VALUES (147, 'mc', 'mco', 492, 'MONACO', 'Monaco', NULL);
INSERT INTO "public"."country" VALUES (148, 'mn', 'mng', 496, 'MONGOLIA', 'Mongolia', NULL);
INSERT INTO "public"."country" VALUES (149, 'me', 'mne', 499, 'MONTENEGRO', 'Montenegro', NULL);
INSERT INTO "public"."country" VALUES (150, 'ms', 'msr', 500, 'MONTSERRAT', 'Montserrat', NULL);
INSERT INTO "public"."country" VALUES (151, 'ma', 'mar', 504, 'MOROCCO', 'Morocco', NULL);
INSERT INTO "public"."country" VALUES (152, 'mz', 'moz', 508, 'MOZAMBIQUE', 'Mozambique', NULL);
INSERT INTO "public"."country" VALUES (153, 'mm', 'mmr', 104, 'MYANMAR', 'Myanmar', NULL);
INSERT INTO "public"."country" VALUES (154, 'na', 'nam', 516, 'NAMIBIA', 'Namibia', NULL);
INSERT INTO "public"."country" VALUES (155, 'nr', 'nru', 520, 'NAURU', 'Nauru', NULL);
INSERT INTO "public"."country" VALUES (156, 'np', 'npl', 524, 'NEPAL', 'Nepal', NULL);
INSERT INTO "public"."country" VALUES (157, 'nl', 'nld', 528, 'NETHERLANDS', 'Netherlands', NULL);
INSERT INTO "public"."country" VALUES (158, 'nc', 'ncl', 540, 'NEW CALEDONIA', 'New Caledonia', NULL);
INSERT INTO "public"."country" VALUES (159, 'nz', 'nzl', 554, 'NEW ZEALAND', 'New Zealand', NULL);
INSERT INTO "public"."country" VALUES (160, 'ni', 'nic', 558, 'NICARAGUA', 'Nicaragua', NULL);
INSERT INTO "public"."country" VALUES (161, 'ne', 'ner', 562, 'NIGER', 'Niger', NULL);
INSERT INTO "public"."country" VALUES (162, 'ng', 'nga', 566, 'NIGERIA', 'Nigeria', NULL);
INSERT INTO "public"."country" VALUES (163, 'nu', 'niu', 570, 'NIUE', 'Niue', NULL);
INSERT INTO "public"."country" VALUES (164, 'nf', 'nfk', 574, 'NORFOLK ISLAND', 'Norfolk Island', NULL);
INSERT INTO "public"."country" VALUES (165, 'mp', 'mnp', 580, 'NORTHERN MARIANA ISLANDS', 'Northern Mariana Islands', NULL);
INSERT INTO "public"."country" VALUES (166, 'no', 'nor', 578, 'NORWAY', 'Norway', NULL);
INSERT INTO "public"."country" VALUES (167, 'om', 'omn', 512, 'OMAN', 'Oman', NULL);
INSERT INTO "public"."country" VALUES (168, 'pk', 'pak', 586, 'PAKISTAN', 'Pakistan', NULL);
INSERT INTO "public"."country" VALUES (169, 'pw', 'plw', 585, 'PALAU', 'Palau', NULL);
INSERT INTO "public"."country" VALUES (170, 'ps', 'pse', 275, 'PALESTINIAN TERRITORY, OCCUPIED', 'Palestinian Territory, Occupied', NULL);
INSERT INTO "public"."country" VALUES (171, 'pa', 'pan', 591, 'PANAMA', 'Panama', NULL);
INSERT INTO "public"."country" VALUES (172, 'pg', 'png', 598, 'PAPUA NEW GUINEA', 'Papua New Guinea', NULL);
INSERT INTO "public"."country" VALUES (173, 'py', 'pry', 600, 'PARAGUAY', 'Paraguay', NULL);
INSERT INTO "public"."country" VALUES (174, 'pe', 'per', 604, 'PERU', 'Peru', NULL);
INSERT INTO "public"."country" VALUES (175, 'ph', 'phl', 608, 'PHILIPPINES', 'Philippines', NULL);
INSERT INTO "public"."country" VALUES (176, 'pn', 'pcn', 612, 'PITCAIRN', 'Pitcairn', NULL);
INSERT INTO "public"."country" VALUES (177, 'pl', 'pol', 616, 'POLAND', 'Poland', NULL);
INSERT INTO "public"."country" VALUES (178, 'pt', 'prt', 620, 'PORTUGAL', 'Portugal', NULL);
INSERT INTO "public"."country" VALUES (179, 'pr', 'pri', 630, 'PUERTO RICO', 'Puerto Rico', NULL);
INSERT INTO "public"."country" VALUES (180, 'qa', 'qat', 634, 'QATAR', 'Qatar', NULL);
INSERT INTO "public"."country" VALUES (181, 're', 'reu', 638, 'REUNION', 'Reunion', NULL);
INSERT INTO "public"."country" VALUES (182, 'ro', 'rom', 642, 'ROMANIA', 'Romania', NULL);
INSERT INTO "public"."country" VALUES (183, 'ru', 'rus', 643, 'RUSSIAN FEDERATION', 'Russian Federation', NULL);
INSERT INTO "public"."country" VALUES (184, 'rw', 'rwa', 646, 'RWANDA', 'Rwanda', NULL);
INSERT INTO "public"."country" VALUES (185, 'bl', 'blm', 652, 'SAINT BARTHÉLEMY', 'Saint Barthélemy', NULL);
INSERT INTO "public"."country" VALUES (186, 'sh', 'shn', 654, 'SAINT HELENA', 'Saint Helena', NULL);
INSERT INTO "public"."country" VALUES (187, 'kn', 'kna', 659, 'SAINT KITTS AND NEVIS', 'Saint Kitts and Nevis', NULL);
INSERT INTO "public"."country" VALUES (188, 'lc', 'lca', 662, 'SAINT LUCIA', 'Saint Lucia', NULL);
INSERT INTO "public"."country" VALUES (189, 'mf', 'maf', 663, 'SAINT MARTIN (FRENCH PART)', 'Saint Martin (French part)', NULL);
INSERT INTO "public"."country" VALUES (190, 'pm', 'spm', 666, 'SAINT PIERRE AND MIQUELON', 'Saint Pierre and Miquelon', NULL);
INSERT INTO "public"."country" VALUES (191, 'vc', 'vct', 670, 'SAINT VINCENT AND THE GRENADINES', 'Saint Vincent and the Grenadines', NULL);
INSERT INTO "public"."country" VALUES (192, 'ws', 'wsm', 882, 'SAMOA', 'Samoa', NULL);
INSERT INTO "public"."country" VALUES (193, 'sm', 'smr', 674, 'SAN MARINO', 'San Marino', NULL);
INSERT INTO "public"."country" VALUES (194, 'st', 'stp', 678, 'SAO TOME AND PRINCIPE', 'Sao Tome and Principe', NULL);
INSERT INTO "public"."country" VALUES (195, 'sa', 'sau', 682, 'SAUDI ARABIA', 'Saudi Arabia', NULL);
INSERT INTO "public"."country" VALUES (196, 'sn', 'sen', 686, 'SENEGAL', 'Senegal', NULL);
INSERT INTO "public"."country" VALUES (197, 'rs', 'srb', 688, 'SERBIA', 'Serbia', NULL);
INSERT INTO "public"."country" VALUES (198, 'sc', 'syc', 690, 'SEYCHELLES', 'Seychelles', NULL);
INSERT INTO "public"."country" VALUES (199, 'sl', 'sle', 694, 'SIERRA LEONE', 'Sierra Leone', NULL);
INSERT INTO "public"."country" VALUES (200, 'sg', 'sgp', 702, 'SINGAPORE', 'Singapore', NULL);
INSERT INTO "public"."country" VALUES (201, 'sx', 'sxm', 534, 'SINT MAARTEN', 'Sint Maarten', NULL);
INSERT INTO "public"."country" VALUES (202, 'sk', 'svk', 703, 'SLOVAKIA', 'Slovakia', NULL);
INSERT INTO "public"."country" VALUES (203, 'si', 'svn', 705, 'SLOVENIA', 'Slovenia', NULL);
INSERT INTO "public"."country" VALUES (204, 'sb', 'slb', 90, 'SOLOMON ISLANDS', 'Solomon Islands', NULL);
INSERT INTO "public"."country" VALUES (205, 'so', 'som', 706, 'SOMALIA', 'Somalia', NULL);
INSERT INTO "public"."country" VALUES (206, 'za', 'zaf', 710, 'SOUTH AFRICA', 'South Africa', NULL);
INSERT INTO "public"."country" VALUES (207, 'gs', 'sgs', 239, 'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS', 'South Georgia and the South Sandwich Islands', NULL);
INSERT INTO "public"."country" VALUES (208, 'ss', 'ssd', 728, 'SOUTH SUDAN', 'South Sudan', NULL);
INSERT INTO "public"."country" VALUES (210, 'lk', 'lka', 144, 'SRI LANKA', 'Sri Lanka', NULL);
INSERT INTO "public"."country" VALUES (211, 'sd', 'sdn', 729, 'SUDAN', 'Sudan', NULL);
INSERT INTO "public"."country" VALUES (212, 'sr', 'sur', 740, 'SURINAME', 'Suriname', NULL);
INSERT INTO "public"."country" VALUES (213, 'sj', 'sjm', 744, 'SVALBARD AND JAN MAYEN', 'Svalbard and Jan Mayen', NULL);
INSERT INTO "public"."country" VALUES (214, 'sz', 'swz', 748, 'SWAZILAND', 'Swaziland', NULL);
INSERT INTO "public"."country" VALUES (216, 'ch', 'che', 756, 'SWITZERLAND', 'Switzerland', NULL);
INSERT INTO "public"."country" VALUES (217, 'sy', 'syr', 760, 'SYRIAN ARAB REPUBLIC', 'Syrian Arab Republic', NULL);
INSERT INTO "public"."country" VALUES (218, 'tw', 'twn', 158, 'TAIWAN, PROVINCE OF CHINA', 'Taiwan, Province of China', NULL);
INSERT INTO "public"."country" VALUES (219, 'tj', 'tjk', 762, 'TAJIKISTAN', 'Tajikistan', NULL);
INSERT INTO "public"."country" VALUES (220, 'tz', 'tza', 834, 'TANZANIA, UNITED REPUBLIC OF', 'Tanzania, United Republic of', NULL);
INSERT INTO "public"."country" VALUES (221, 'th', 'tha', 764, 'THAILAND', 'Thailand', NULL);
INSERT INTO "public"."country" VALUES (222, 'tl', 'tls', 626, 'TIMOR LESTE', 'Timor Leste', NULL);
INSERT INTO "public"."country" VALUES (223, 'tg', 'tgo', 768, 'TOGO', 'Togo', NULL);
INSERT INTO "public"."country" VALUES (224, 'tk', 'tkl', 772, 'TOKELAU', 'Tokelau', NULL);
INSERT INTO "public"."country" VALUES (225, 'to', 'ton', 776, 'TONGA', 'Tonga', NULL);
INSERT INTO "public"."country" VALUES (226, 'tt', 'tto', 780, 'TRINIDAD AND TOBAGO', 'Trinidad and Tobago', NULL);
INSERT INTO "public"."country" VALUES (227, 'tn', 'tun', 788, 'TUNISIA', 'Tunisia', NULL);
INSERT INTO "public"."country" VALUES (228, 'tr', 'tur', 792, 'TURKEY', 'Turkey', NULL);
INSERT INTO "public"."country" VALUES (229, 'tm', 'tkm', 795, 'TURKMENISTAN', 'Turkmenistan', NULL);
INSERT INTO "public"."country" VALUES (230, 'tc', 'tca', 796, 'TURKS AND CAICOS ISLANDS', 'Turks and Caicos Islands', NULL);
INSERT INTO "public"."country" VALUES (231, 'tv', 'tuv', 798, 'TUVALU', 'Tuvalu', NULL);
INSERT INTO "public"."country" VALUES (232, 'ug', 'uga', 800, 'UGANDA', 'Uganda', NULL);
INSERT INTO "public"."country" VALUES (233, 'ua', 'ukr', 804, 'UKRAINE', 'Ukraine', NULL);
INSERT INTO "public"."country" VALUES (234, 'ae', 'are', 784, 'UNITED ARAB EMIRATES', 'United Arab Emirates', NULL);
INSERT INTO "public"."country" VALUES (237, 'um', 'umi', 581, 'UNITED STATES MINOR OUTLYING ISLANDS', 'United States Minor Outlying Islands', NULL);
INSERT INTO "public"."country" VALUES (238, 'uy', 'ury', 858, 'URUGUAY', 'Uruguay', NULL);
INSERT INTO "public"."country" VALUES (239, 'uz', 'uzb', 860, 'UZBEKISTAN', 'Uzbekistan', NULL);
INSERT INTO "public"."country" VALUES (240, 'vu', 'vut', 548, 'VANUATU', 'Vanuatu', NULL);
INSERT INTO "public"."country" VALUES (241, 've', 'ven', 862, 'VENEZUELA', 'Venezuela', NULL);
INSERT INTO "public"."country" VALUES (242, 'vn', 'vnm', 704, 'VIET NAM', 'Viet Nam', NULL);
INSERT INTO "public"."country" VALUES (243, 'vg', 'vgb', 92, 'VIRGIN ISLANDS, BRITISH', 'Virgin Islands, British', NULL);
INSERT INTO "public"."country" VALUES (244, 'vi', 'vir', 850, 'VIRGIN ISLANDS, U.S.', 'Virgin Islands, U.S.', NULL);
INSERT INTO "public"."country" VALUES (245, 'wf', 'wlf', 876, 'WALLIS AND FUTUNA', 'Wallis and Futuna', NULL);
INSERT INTO "public"."country" VALUES (246, 'eh', 'esh', 732, 'WESTERN SAHARA', 'Western Sahara', NULL);
INSERT INTO "public"."country" VALUES (247, 'ye', 'yem', 887, 'YEMEN', 'Yemen', NULL);
INSERT INTO "public"."country" VALUES (248, 'zm', 'zmb', 894, 'ZAMBIA', 'Zambia', NULL);
INSERT INTO "public"."country" VALUES (249, 'zw', 'zwe', 716, 'ZIMBABWE', 'Zimbabwe', NULL);
INSERT INTO "public"."country" VALUES (250, 'ax', 'ala', 248, 'ÅLAND ISLANDS', 'Åland Islands', NULL);
INSERT INTO "public"."country" VALUES (235, 'gb', 'gbr', 826, 'UNITED KINGDOM', 'United Kingdom', 'reg_01HWG0CM2FWA5NEPFPA2B1C16Z');
INSERT INTO "public"."country" VALUES (82, 'de', 'deu', 276, 'GERMANY', 'Germany', 'reg_01HWG0CM2FWA5NEPFPA2B1C16Z');
INSERT INTO "public"."country" VALUES (60, 'dk', 'dnk', 208, 'DENMARK', 'Denmark', 'reg_01HWG0CM2FWA5NEPFPA2B1C16Z');
INSERT INTO "public"."country" VALUES (215, 'se', 'swe', 752, 'SWEDEN', 'Sweden', 'reg_01HWG0CM2FWA5NEPFPA2B1C16Z');
INSERT INTO "public"."country" VALUES (75, 'fr', 'fra', 250, 'FRANCE', 'France', 'reg_01HWG0CM2FWA5NEPFPA2B1C16Z');
INSERT INTO "public"."country" VALUES (209, 'es', 'esp', 724, 'SPAIN', 'Spain', 'reg_01HWG0CM2FWA5NEPFPA2B1C16Z');
INSERT INTO "public"."country" VALUES (109, 'it', 'ita', 380, 'ITALY', 'Italy', 'reg_01HWG0CM2FWA5NEPFPA2B1C16Z');
INSERT INTO "public"."country" VALUES (236, 'us', 'usa', 840, 'UNITED STATES', 'United States', 'reg_01HWG0CM3T1Y4H9XZTE46DVSKX');
INSERT INTO "public"."country" VALUES (39, 'ca', 'can', 124, 'CANADA', 'Canada', 'reg_01HWG0CM3T1Y4H9XZTE46DVSKX');

-- ----------------------------
-- Table structure for currency
-- ----------------------------
DROP TABLE IF EXISTS "public"."currency";
CREATE TABLE "public"."currency" (
  "code" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "symbol" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "symbol_native" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of currency
-- ----------------------------
INSERT INTO "public"."currency" VALUES ('usd', '$', '$', 'US Dollar');
INSERT INTO "public"."currency" VALUES ('cad', 'CA$', '$', 'Canadian Dollar');
INSERT INTO "public"."currency" VALUES ('eur', '€', '€', 'Euro');
INSERT INTO "public"."currency" VALUES ('aed', 'AED', 'د.إ.‏', 'United Arab Emirates Dirham');
INSERT INTO "public"."currency" VALUES ('afn', 'Af', '؋', 'Afghan Afghani');
INSERT INTO "public"."currency" VALUES ('all', 'ALL', 'Lek', 'Albanian Lek');
INSERT INTO "public"."currency" VALUES ('amd', 'AMD', 'դր.', 'Armenian Dram');
INSERT INTO "public"."currency" VALUES ('ars', 'AR$', '$', 'Argentine Peso');
INSERT INTO "public"."currency" VALUES ('aud', 'AU$', '$', 'Australian Dollar');
INSERT INTO "public"."currency" VALUES ('azn', 'man.', 'ман.', 'Azerbaijani Manat');
INSERT INTO "public"."currency" VALUES ('bam', 'KM', 'KM', 'Bosnia-Herzegovina Convertible Mark');
INSERT INTO "public"."currency" VALUES ('bdt', 'Tk', '৳', 'Bangladeshi Taka');
INSERT INTO "public"."currency" VALUES ('bgn', 'BGN', 'лв.', 'Bulgarian Lev');
INSERT INTO "public"."currency" VALUES ('bhd', 'BD', 'د.ب.‏', 'Bahraini Dinar');
INSERT INTO "public"."currency" VALUES ('bif', 'FBu', 'FBu', 'Burundian Franc');
INSERT INTO "public"."currency" VALUES ('bnd', 'BN$', '$', 'Brunei Dollar');
INSERT INTO "public"."currency" VALUES ('bob', 'Bs', 'Bs', 'Bolivian Boliviano');
INSERT INTO "public"."currency" VALUES ('brl', 'R$', 'R$', 'Brazilian Real');
INSERT INTO "public"."currency" VALUES ('bwp', 'BWP', 'P', 'Botswanan Pula');
INSERT INTO "public"."currency" VALUES ('byn', 'Br', 'руб.', 'Belarusian Ruble');
INSERT INTO "public"."currency" VALUES ('bzd', 'BZ$', '$', 'Belize Dollar');
INSERT INTO "public"."currency" VALUES ('cdf', 'CDF', 'FrCD', 'Congolese Franc');
INSERT INTO "public"."currency" VALUES ('chf', 'CHF', 'CHF', 'Swiss Franc');
INSERT INTO "public"."currency" VALUES ('clp', 'CL$', '$', 'Chilean Peso');
INSERT INTO "public"."currency" VALUES ('cny', 'CN¥', 'CN¥', 'Chinese Yuan');
INSERT INTO "public"."currency" VALUES ('cop', 'CO$', '$', 'Colombian Peso');
INSERT INTO "public"."currency" VALUES ('crc', '₡', '₡', 'Costa Rican Colón');
INSERT INTO "public"."currency" VALUES ('cve', 'CV$', 'CV$', 'Cape Verdean Escudo');
INSERT INTO "public"."currency" VALUES ('czk', 'Kč', 'Kč', 'Czech Republic Koruna');
INSERT INTO "public"."currency" VALUES ('djf', 'Fdj', 'Fdj', 'Djiboutian Franc');
INSERT INTO "public"."currency" VALUES ('dkk', 'Dkr', 'kr', 'Danish Krone');
INSERT INTO "public"."currency" VALUES ('dop', 'RD$', 'RD$', 'Dominican Peso');
INSERT INTO "public"."currency" VALUES ('dzd', 'DA', 'د.ج.‏', 'Algerian Dinar');
INSERT INTO "public"."currency" VALUES ('eek', 'Ekr', 'kr', 'Estonian Kroon');
INSERT INTO "public"."currency" VALUES ('egp', 'EGP', 'ج.م.‏', 'Egyptian Pound');
INSERT INTO "public"."currency" VALUES ('ern', 'Nfk', 'Nfk', 'Eritrean Nakfa');
INSERT INTO "public"."currency" VALUES ('etb', 'Br', 'Br', 'Ethiopian Birr');
INSERT INTO "public"."currency" VALUES ('gbp', '£', '£', 'British Pound Sterling');
INSERT INTO "public"."currency" VALUES ('gel', 'GEL', 'GEL', 'Georgian Lari');
INSERT INTO "public"."currency" VALUES ('ghs', 'GH₵', 'GH₵', 'Ghanaian Cedi');
INSERT INTO "public"."currency" VALUES ('gnf', 'FG', 'FG', 'Guinean Franc');
INSERT INTO "public"."currency" VALUES ('gtq', 'GTQ', 'Q', 'Guatemalan Quetzal');
INSERT INTO "public"."currency" VALUES ('hkd', 'HK$', '$', 'Hong Kong Dollar');
INSERT INTO "public"."currency" VALUES ('hnl', 'HNL', 'L', 'Honduran Lempira');
INSERT INTO "public"."currency" VALUES ('hrk', 'kn', 'kn', 'Croatian Kuna');
INSERT INTO "public"."currency" VALUES ('huf', 'Ft', 'Ft', 'Hungarian Forint');
INSERT INTO "public"."currency" VALUES ('idr', 'Rp', 'Rp', 'Indonesian Rupiah');
INSERT INTO "public"."currency" VALUES ('ils', '₪', '₪', 'Israeli New Sheqel');
INSERT INTO "public"."currency" VALUES ('inr', 'Rs', '₹', 'Indian Rupee');
INSERT INTO "public"."currency" VALUES ('iqd', 'IQD', 'د.ع.‏', 'Iraqi Dinar');
INSERT INTO "public"."currency" VALUES ('irr', 'IRR', '﷼', 'Iranian Rial');
INSERT INTO "public"."currency" VALUES ('isk', 'Ikr', 'kr', 'Icelandic Króna');
INSERT INTO "public"."currency" VALUES ('jmd', 'J$', '$', 'Jamaican Dollar');
INSERT INTO "public"."currency" VALUES ('jod', 'JD', 'د.أ.‏', 'Jordanian Dinar');
INSERT INTO "public"."currency" VALUES ('jpy', '¥', '￥', 'Japanese Yen');
INSERT INTO "public"."currency" VALUES ('kes', 'Ksh', 'Ksh', 'Kenyan Shilling');
INSERT INTO "public"."currency" VALUES ('khr', 'KHR', '៛', 'Cambodian Riel');
INSERT INTO "public"."currency" VALUES ('kmf', 'CF', 'FC', 'Comorian Franc');
INSERT INTO "public"."currency" VALUES ('krw', '₩', '₩', 'South Korean Won');
INSERT INTO "public"."currency" VALUES ('kwd', 'KD', 'د.ك.‏', 'Kuwaiti Dinar');
INSERT INTO "public"."currency" VALUES ('kzt', 'KZT', 'тңг.', 'Kazakhstani Tenge');
INSERT INTO "public"."currency" VALUES ('lbp', 'LB£', 'ل.ل.‏', 'Lebanese Pound');
INSERT INTO "public"."currency" VALUES ('lkr', 'SLRs', 'SL Re', 'Sri Lankan Rupee');
INSERT INTO "public"."currency" VALUES ('ltl', 'Lt', 'Lt', 'Lithuanian Litas');
INSERT INTO "public"."currency" VALUES ('lvl', 'Ls', 'Ls', 'Latvian Lats');
INSERT INTO "public"."currency" VALUES ('lyd', 'LD', 'د.ل.‏', 'Libyan Dinar');
INSERT INTO "public"."currency" VALUES ('mad', 'MAD', 'د.م.‏', 'Moroccan Dirham');
INSERT INTO "public"."currency" VALUES ('mdl', 'MDL', 'MDL', 'Moldovan Leu');
INSERT INTO "public"."currency" VALUES ('mga', 'MGA', 'MGA', 'Malagasy Ariary');
INSERT INTO "public"."currency" VALUES ('mkd', 'MKD', 'MKD', 'Macedonian Denar');
INSERT INTO "public"."currency" VALUES ('mmk', 'MMK', 'K', 'Myanma Kyat');
INSERT INTO "public"."currency" VALUES ('mnt', 'MNT', '₮', 'Mongolian Tugrig');
INSERT INTO "public"."currency" VALUES ('mop', 'MOP$', 'MOP$', 'Macanese Pataca');
INSERT INTO "public"."currency" VALUES ('mur', 'MURs', 'MURs', 'Mauritian Rupee');
INSERT INTO "public"."currency" VALUES ('mxn', 'MX$', '$', 'Mexican Peso');
INSERT INTO "public"."currency" VALUES ('myr', 'RM', 'RM', 'Malaysian Ringgit');
INSERT INTO "public"."currency" VALUES ('mzn', 'MTn', 'MTn', 'Mozambican Metical');
INSERT INTO "public"."currency" VALUES ('nad', 'N$', 'N$', 'Namibian Dollar');
INSERT INTO "public"."currency" VALUES ('ngn', '₦', '₦', 'Nigerian Naira');
INSERT INTO "public"."currency" VALUES ('nio', 'C$', 'C$', 'Nicaraguan Córdoba');
INSERT INTO "public"."currency" VALUES ('nok', 'Nkr', 'kr', 'Norwegian Krone');
INSERT INTO "public"."currency" VALUES ('npr', 'NPRs', 'नेरू', 'Nepalese Rupee');
INSERT INTO "public"."currency" VALUES ('nzd', 'NZ$', '$', 'New Zealand Dollar');
INSERT INTO "public"."currency" VALUES ('omr', 'OMR', 'ر.ع.‏', 'Omani Rial');
INSERT INTO "public"."currency" VALUES ('pab', 'B/.', 'B/.', 'Panamanian Balboa');
INSERT INTO "public"."currency" VALUES ('pen', 'S/.', 'S/.', 'Peruvian Nuevo Sol');
INSERT INTO "public"."currency" VALUES ('php', '₱', '₱', 'Philippine Peso');
INSERT INTO "public"."currency" VALUES ('pkr', 'PKRs', '₨', 'Pakistani Rupee');
INSERT INTO "public"."currency" VALUES ('pln', 'zł', 'zł', 'Polish Zloty');
INSERT INTO "public"."currency" VALUES ('pyg', '₲', '₲', 'Paraguayan Guarani');
INSERT INTO "public"."currency" VALUES ('qar', 'QR', 'ر.ق.‏', 'Qatari Rial');
INSERT INTO "public"."currency" VALUES ('ron', 'RON', 'RON', 'Romanian Leu');
INSERT INTO "public"."currency" VALUES ('rsd', 'din.', 'дин.', 'Serbian Dinar');
INSERT INTO "public"."currency" VALUES ('rub', 'RUB', '₽.', 'Russian Ruble');
INSERT INTO "public"."currency" VALUES ('rwf', 'RWF', 'FR', 'Rwandan Franc');
INSERT INTO "public"."currency" VALUES ('sar', 'SR', 'ر.س.‏', 'Saudi Riyal');
INSERT INTO "public"."currency" VALUES ('sdg', 'SDG', 'SDG', 'Sudanese Pound');
INSERT INTO "public"."currency" VALUES ('sek', 'Skr', 'kr', 'Swedish Krona');
INSERT INTO "public"."currency" VALUES ('sgd', 'S$', '$', 'Singapore Dollar');
INSERT INTO "public"."currency" VALUES ('sos', 'Ssh', 'Ssh', 'Somali Shilling');
INSERT INTO "public"."currency" VALUES ('syp', 'SY£', 'ل.س.‏', 'Syrian Pound');
INSERT INTO "public"."currency" VALUES ('thb', '฿', '฿', 'Thai Baht');
INSERT INTO "public"."currency" VALUES ('tnd', 'DT', 'د.ت.‏', 'Tunisian Dinar');
INSERT INTO "public"."currency" VALUES ('top', 'T$', 'T$', 'Tongan Paʻanga');
INSERT INTO "public"."currency" VALUES ('try', 'TL', 'TL', 'Turkish Lira');
INSERT INTO "public"."currency" VALUES ('ttd', 'TT$', '$', 'Trinidad and Tobago Dollar');
INSERT INTO "public"."currency" VALUES ('twd', 'NT$', 'NT$', 'New Taiwan Dollar');
INSERT INTO "public"."currency" VALUES ('tzs', 'TSh', 'TSh', 'Tanzanian Shilling');
INSERT INTO "public"."currency" VALUES ('uah', '₴', '₴', 'Ukrainian Hryvnia');
INSERT INTO "public"."currency" VALUES ('ugx', 'USh', 'USh', 'Ugandan Shilling');
INSERT INTO "public"."currency" VALUES ('uyu', '$U', '$', 'Uruguayan Peso');
INSERT INTO "public"."currency" VALUES ('uzs', 'UZS', 'UZS', 'Uzbekistan Som');
INSERT INTO "public"."currency" VALUES ('vef', 'Bs.F.', 'Bs.F.', 'Venezuelan Bolívar');
INSERT INTO "public"."currency" VALUES ('vnd', '₫', '₫', 'Vietnamese Dong');
INSERT INTO "public"."currency" VALUES ('xaf', 'FCFA', 'FCFA', 'CFA Franc BEAC');
INSERT INTO "public"."currency" VALUES ('xof', 'CFA', 'CFA', 'CFA Franc BCEAO');
INSERT INTO "public"."currency" VALUES ('yer', 'YR', 'ر.ي.‏', 'Yemeni Rial');
INSERT INTO "public"."currency" VALUES ('zar', 'R', 'R', 'South African Rand');
INSERT INTO "public"."currency" VALUES ('zmk', 'ZK', 'ZK', 'Zambian Kwacha');
INSERT INTO "public"."currency" VALUES ('zwl', 'ZWL$', 'ZWL$', 'Zimbabwean Dollar');

-- ----------------------------
-- Table structure for custom_shipping_option
-- ----------------------------
DROP TABLE IF EXISTS "public"."custom_shipping_option";
CREATE TABLE "public"."custom_shipping_option" (
  "id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "price" int4 NOT NULL,
  "shipping_option_id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "cart_id" varchar COLLATE "pg_catalog"."default",
  "created_at" timestamptz(6) NOT NULL DEFAULT now(),
  "updated_at" timestamptz(6) NOT NULL DEFAULT now(),
  "deleted_at" timestamptz(6),
  "metadata" jsonb
)
;

-- ----------------------------
-- Records of custom_shipping_option
-- ----------------------------

-- ----------------------------
-- Table structure for customer
-- ----------------------------
DROP TABLE IF EXISTS "public"."customer";
CREATE TABLE "public"."customer" (
  "id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "email" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "first_name" varchar COLLATE "pg_catalog"."default",
  "last_name" varchar COLLATE "pg_catalog"."default",
  "billing_address_id" varchar COLLATE "pg_catalog"."default",
  "password_hash" varchar COLLATE "pg_catalog"."default",
  "phone" varchar COLLATE "pg_catalog"."default",
  "has_account" bool NOT NULL DEFAULT false,
  "created_at" timestamptz(6) NOT NULL DEFAULT now(),
  "updated_at" timestamptz(6) NOT NULL DEFAULT now(),
  "deleted_at" timestamptz(6),
  "metadata" jsonb
)
;

-- ----------------------------
-- Records of customer
-- ----------------------------

-- ----------------------------
-- Table structure for customer_group
-- ----------------------------
DROP TABLE IF EXISTS "public"."customer_group";
CREATE TABLE "public"."customer_group" (
  "id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamptz(6) NOT NULL DEFAULT now(),
  "updated_at" timestamptz(6) NOT NULL DEFAULT now(),
  "deleted_at" timestamptz(6),
  "metadata" jsonb
)
;

-- ----------------------------
-- Records of customer_group
-- ----------------------------

-- ----------------------------
-- Table structure for customer_group_customers
-- ----------------------------
DROP TABLE IF EXISTS "public"."customer_group_customers";
CREATE TABLE "public"."customer_group_customers" (
  "customer_group_id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "customer_id" varchar COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of customer_group_customers
-- ----------------------------

-- ----------------------------
-- Table structure for discount
-- ----------------------------
DROP TABLE IF EXISTS "public"."discount";
CREATE TABLE "public"."discount" (
  "id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "code" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "is_dynamic" bool NOT NULL,
  "rule_id" varchar COLLATE "pg_catalog"."default",
  "is_disabled" bool NOT NULL,
  "parent_discount_id" varchar COLLATE "pg_catalog"."default",
  "starts_at" timestamptz(6) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  "ends_at" timestamptz(6),
  "created_at" timestamptz(6) NOT NULL DEFAULT now(),
  "updated_at" timestamptz(6) NOT NULL DEFAULT now(),
  "deleted_at" timestamptz(6),
  "metadata" jsonb,
  "usage_limit" int4,
  "usage_count" int4 NOT NULL DEFAULT 0,
  "valid_duration" varchar COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of discount
-- ----------------------------

-- ----------------------------
-- Table structure for discount_condition
-- ----------------------------
DROP TABLE IF EXISTS "public"."discount_condition";
CREATE TABLE "public"."discount_condition" (
  "id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "type" "public"."discount_condition_type_enum" NOT NULL,
  "operator" "public"."discount_condition_operator_enum" NOT NULL,
  "discount_rule_id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamptz(6) NOT NULL DEFAULT now(),
  "updated_at" timestamptz(6) NOT NULL DEFAULT now(),
  "deleted_at" timestamptz(6),
  "metadata" jsonb
)
;

-- ----------------------------
-- Records of discount_condition
-- ----------------------------

-- ----------------------------
-- Table structure for discount_condition_customer_group
-- ----------------------------
DROP TABLE IF EXISTS "public"."discount_condition_customer_group";
CREATE TABLE "public"."discount_condition_customer_group" (
  "customer_group_id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "condition_id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamptz(6) NOT NULL DEFAULT now(),
  "updated_at" timestamptz(6) NOT NULL DEFAULT now(),
  "metadata" jsonb
)
;

-- ----------------------------
-- Records of discount_condition_customer_group
-- ----------------------------

-- ----------------------------
-- Table structure for discount_condition_product
-- ----------------------------
DROP TABLE IF EXISTS "public"."discount_condition_product";
CREATE TABLE "public"."discount_condition_product" (
  "product_id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "condition_id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamptz(6) NOT NULL DEFAULT now(),
  "updated_at" timestamptz(6) NOT NULL DEFAULT now(),
  "metadata" jsonb
)
;

-- ----------------------------
-- Records of discount_condition_product
-- ----------------------------

-- ----------------------------
-- Table structure for discount_condition_product_collection
-- ----------------------------
DROP TABLE IF EXISTS "public"."discount_condition_product_collection";
CREATE TABLE "public"."discount_condition_product_collection" (
  "product_collection_id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "condition_id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamptz(6) NOT NULL DEFAULT now(),
  "updated_at" timestamptz(6) NOT NULL DEFAULT now(),
  "metadata" jsonb
)
;

-- ----------------------------
-- Records of discount_condition_product_collection
-- ----------------------------

-- ----------------------------
-- Table structure for discount_condition_product_tag
-- ----------------------------
DROP TABLE IF EXISTS "public"."discount_condition_product_tag";
CREATE TABLE "public"."discount_condition_product_tag" (
  "product_tag_id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "condition_id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamptz(6) NOT NULL DEFAULT now(),
  "updated_at" timestamptz(6) NOT NULL DEFAULT now(),
  "metadata" jsonb
)
;

-- ----------------------------
-- Records of discount_condition_product_tag
-- ----------------------------

-- ----------------------------
-- Table structure for discount_condition_product_type
-- ----------------------------
DROP TABLE IF EXISTS "public"."discount_condition_product_type";
CREATE TABLE "public"."discount_condition_product_type" (
  "product_type_id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "condition_id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamptz(6) NOT NULL DEFAULT now(),
  "updated_at" timestamptz(6) NOT NULL DEFAULT now(),
  "metadata" jsonb
)
;

-- ----------------------------
-- Records of discount_condition_product_type
-- ----------------------------

-- ----------------------------
-- Table structure for discount_regions
-- ----------------------------
DROP TABLE IF EXISTS "public"."discount_regions";
CREATE TABLE "public"."discount_regions" (
  "discount_id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "region_id" varchar COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of discount_regions
-- ----------------------------

-- ----------------------------
-- Table structure for discount_rule
-- ----------------------------
DROP TABLE IF EXISTS "public"."discount_rule";
CREATE TABLE "public"."discount_rule" (
  "id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "description" varchar COLLATE "pg_catalog"."default",
  "type" "public"."discount_rule_type_enum" NOT NULL,
  "value" int4 NOT NULL,
  "allocation" "public"."discount_rule_allocation_enum",
  "created_at" timestamptz(6) NOT NULL DEFAULT now(),
  "updated_at" timestamptz(6) NOT NULL DEFAULT now(),
  "deleted_at" timestamptz(6),
  "metadata" jsonb
)
;

-- ----------------------------
-- Records of discount_rule
-- ----------------------------

-- ----------------------------
-- Table structure for discount_rule_products
-- ----------------------------
DROP TABLE IF EXISTS "public"."discount_rule_products";
CREATE TABLE "public"."discount_rule_products" (
  "discount_rule_id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "product_id" varchar COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of discount_rule_products
-- ----------------------------

-- ----------------------------
-- Table structure for draft_order
-- ----------------------------
DROP TABLE IF EXISTS "public"."draft_order";
CREATE TABLE "public"."draft_order" (
  "id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "status" "public"."draft_order_status_enum" NOT NULL DEFAULT 'open'::draft_order_status_enum,
  "display_id" int4 NOT NULL DEFAULT nextval('draft_order_display_id_seq'::regclass),
  "cart_id" varchar COLLATE "pg_catalog"."default",
  "order_id" varchar COLLATE "pg_catalog"."default",
  "canceled_at" timestamptz(6),
  "created_at" timestamptz(6) NOT NULL DEFAULT now(),
  "updated_at" timestamptz(6) NOT NULL DEFAULT now(),
  "completed_at" timestamptz(6),
  "metadata" jsonb,
  "idempotency_key" varchar COLLATE "pg_catalog"."default",
  "no_notification_order" bool
)
;

-- ----------------------------
-- Records of draft_order
-- ----------------------------

-- ----------------------------
-- Table structure for fulfillment
-- ----------------------------
DROP TABLE IF EXISTS "public"."fulfillment";
CREATE TABLE "public"."fulfillment" (
  "id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "swap_id" varchar COLLATE "pg_catalog"."default",
  "order_id" varchar COLLATE "pg_catalog"."default",
  "tracking_numbers" jsonb NOT NULL DEFAULT '[]'::jsonb,
  "data" jsonb NOT NULL,
  "shipped_at" timestamptz(6),
  "canceled_at" timestamptz(6),
  "created_at" timestamptz(6) NOT NULL DEFAULT now(),
  "updated_at" timestamptz(6) NOT NULL DEFAULT now(),
  "metadata" jsonb,
  "idempotency_key" varchar COLLATE "pg_catalog"."default",
  "provider_id" varchar COLLATE "pg_catalog"."default",
  "claim_order_id" varchar COLLATE "pg_catalog"."default",
  "no_notification" bool,
  "location_id" varchar COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of fulfillment
-- ----------------------------

-- ----------------------------
-- Table structure for fulfillment_item
-- ----------------------------
DROP TABLE IF EXISTS "public"."fulfillment_item";
CREATE TABLE "public"."fulfillment_item" (
  "fulfillment_id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "item_id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "quantity" int4 NOT NULL
)
;

-- ----------------------------
-- Records of fulfillment_item
-- ----------------------------

-- ----------------------------
-- Table structure for fulfillment_provider
-- ----------------------------
DROP TABLE IF EXISTS "public"."fulfillment_provider";
CREATE TABLE "public"."fulfillment_provider" (
  "id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "is_installed" bool NOT NULL DEFAULT true
)
;

-- ----------------------------
-- Records of fulfillment_provider
-- ----------------------------
INSERT INTO "public"."fulfillment_provider" VALUES ('manual', 't');

-- ----------------------------
-- Table structure for gift_card
-- ----------------------------
DROP TABLE IF EXISTS "public"."gift_card";
CREATE TABLE "public"."gift_card" (
  "id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "code" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "value" int4 NOT NULL,
  "balance" int4 NOT NULL,
  "region_id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "order_id" varchar COLLATE "pg_catalog"."default",
  "is_disabled" bool NOT NULL DEFAULT false,
  "ends_at" timestamptz(6),
  "created_at" timestamptz(6) NOT NULL DEFAULT now(),
  "updated_at" timestamptz(6) NOT NULL DEFAULT now(),
  "deleted_at" timestamptz(6),
  "metadata" jsonb,
  "tax_rate" float4
)
;

-- ----------------------------
-- Records of gift_card
-- ----------------------------

-- ----------------------------
-- Table structure for gift_card_transaction
-- ----------------------------
DROP TABLE IF EXISTS "public"."gift_card_transaction";
CREATE TABLE "public"."gift_card_transaction" (
  "id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "gift_card_id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "order_id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "amount" int4 NOT NULL,
  "created_at" timestamptz(6) NOT NULL DEFAULT now(),
  "is_taxable" bool,
  "tax_rate" float4
)
;

-- ----------------------------
-- Records of gift_card_transaction
-- ----------------------------

-- ----------------------------
-- Table structure for idempotency_key
-- ----------------------------
DROP TABLE IF EXISTS "public"."idempotency_key";
CREATE TABLE "public"."idempotency_key" (
  "id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "idempotency_key" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamptz(6) NOT NULL DEFAULT now(),
  "locked_at" timestamptz(6),
  "request_method" varchar COLLATE "pg_catalog"."default",
  "request_params" jsonb,
  "request_path" varchar COLLATE "pg_catalog"."default",
  "response_code" int4,
  "response_body" jsonb,
  "recovery_point" varchar COLLATE "pg_catalog"."default" NOT NULL DEFAULT 'started'::character varying
)
;

-- ----------------------------
-- Records of idempotency_key
-- ----------------------------

-- ----------------------------
-- Table structure for image
-- ----------------------------
DROP TABLE IF EXISTS "public"."image";
CREATE TABLE "public"."image" (
  "id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "url" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamptz(6) NOT NULL DEFAULT now(),
  "updated_at" timestamptz(6) NOT NULL DEFAULT now(),
  "deleted_at" timestamptz(6),
  "metadata" jsonb
)
;

-- ----------------------------
-- Records of image
-- ----------------------------

-- ----------------------------
-- Table structure for invite
-- ----------------------------
DROP TABLE IF EXISTS "public"."invite";
CREATE TABLE "public"."invite" (
  "id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "user_email" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "role" "public"."invite_role_enum" DEFAULT 'member'::invite_role_enum,
  "accepted" bool NOT NULL DEFAULT false,
  "created_at" timestamptz(6) NOT NULL DEFAULT now(),
  "updated_at" timestamptz(6) NOT NULL DEFAULT now(),
  "deleted_at" timestamptz(6),
  "metadata" jsonb,
  "token" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "expires_at" timestamptz(6) NOT NULL DEFAULT now()
)
;

-- ----------------------------
-- Records of invite
-- ----------------------------

-- ----------------------------
-- Table structure for line_item
-- ----------------------------
DROP TABLE IF EXISTS "public"."line_item";
CREATE TABLE "public"."line_item" (
  "id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "cart_id" varchar COLLATE "pg_catalog"."default",
  "order_id" varchar COLLATE "pg_catalog"."default",
  "swap_id" varchar COLLATE "pg_catalog"."default",
  "title" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "description" varchar COLLATE "pg_catalog"."default",
  "thumbnail" varchar COLLATE "pg_catalog"."default",
  "is_giftcard" bool NOT NULL DEFAULT false,
  "should_merge" bool NOT NULL DEFAULT true,
  "allow_discounts" bool NOT NULL DEFAULT true,
  "has_shipping" bool,
  "unit_price" int4 NOT NULL,
  "variant_id" varchar COLLATE "pg_catalog"."default",
  "quantity" int4 NOT NULL,
  "fulfilled_quantity" int4,
  "returned_quantity" int4,
  "shipped_quantity" int4,
  "created_at" timestamptz(6) NOT NULL DEFAULT now(),
  "updated_at" timestamptz(6) NOT NULL DEFAULT now(),
  "metadata" jsonb,
  "claim_order_id" varchar COLLATE "pg_catalog"."default",
  "is_return" bool NOT NULL DEFAULT false,
  "original_item_id" varchar COLLATE "pg_catalog"."default",
  "order_edit_id" varchar COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of line_item
-- ----------------------------

-- ----------------------------
-- Table structure for line_item_adjustment
-- ----------------------------
DROP TABLE IF EXISTS "public"."line_item_adjustment";
CREATE TABLE "public"."line_item_adjustment" (
  "id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "item_id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "description" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "discount_id" varchar COLLATE "pg_catalog"."default",
  "amount" numeric NOT NULL,
  "metadata" jsonb
)
;

-- ----------------------------
-- Records of line_item_adjustment
-- ----------------------------

-- ----------------------------
-- Table structure for line_item_tax_line
-- ----------------------------
DROP TABLE IF EXISTS "public"."line_item_tax_line";
CREATE TABLE "public"."line_item_tax_line" (
  "id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "rate" float4 NOT NULL,
  "name" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "code" varchar COLLATE "pg_catalog"."default",
  "created_at" timestamptz(6) NOT NULL DEFAULT now(),
  "updated_at" timestamptz(6) NOT NULL DEFAULT now(),
  "metadata" jsonb,
  "item_id" varchar COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of line_item_tax_line
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS "public"."migrations";
CREATE TABLE "public"."migrations" (
  "id" int4 NOT NULL DEFAULT nextval('migrations_id_seq'::regclass),
  "timestamp" int8 NOT NULL,
  "name" varchar COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO "public"."migrations" VALUES (1, 1611063162649, 'initialSchema1611063162649');
INSERT INTO "public"."migrations" VALUES (2, 1611063174563, 'countriesCurrencies1611063174563');
INSERT INTO "public"."migrations" VALUES (3, 1612284947120, 'claims1612284947120');
INSERT INTO "public"."migrations" VALUES (4, 1612353094577, 'indexes1612353094577');
INSERT INTO "public"."migrations" VALUES (5, 1613146953072, 'notifications1613146953072');
INSERT INTO "public"."migrations" VALUES (6, 1613146953073, 'productTypeCategoryTags1613146953073');
INSERT INTO "public"."migrations" VALUES (7, 1613384784316, 'draftOrders1613384784316');
INSERT INTO "public"."migrations" VALUES (8, 1613656135167, 'trackingLinks1613656135167');
INSERT INTO "public"."migrations" VALUES (9, 1614684597235, 'cartContext1614684597235');
INSERT INTO "public"."migrations" VALUES (10, 1615891636559, 'returnReason1615891636559');
INSERT INTO "public"."migrations" VALUES (11, 1615970124120, 'discountUsageCount1615970124120');
INSERT INTO "public"."migrations" VALUES (12, 1617002207608, 'discountUsage1617002207608');
INSERT INTO "public"."migrations" VALUES (13, 1619108646647, 'nullablePassword1619108646647');
INSERT INTO "public"."migrations" VALUES (14, 1623231564533, 'noNotification1623231564533');
INSERT INTO "public"."migrations" VALUES (15, 1624287602631, 'gcRemoveUniqueOrder1624287602631');
INSERT INTO "public"."migrations" VALUES (16, 1624610325746, 'softDeletingUniqueConstraints1624610325746');
INSERT INTO "public"."migrations" VALUES (17, 1625560513367, 'ensureCancellationFieldsExist1625560513367');
INSERT INTO "public"."migrations" VALUES (18, 1627995307200, 'addDiscountableToProduct1627995307200');
INSERT INTO "public"."migrations" VALUES (19, 1630505790603, 'allowBackorderSwaps1630505790603');
INSERT INTO "public"."migrations" VALUES (20, 1631104895519, 'RankColumnWithDefaultValue1631104895519');
INSERT INTO "public"."migrations" VALUES (21, 1631261634964, 'enforceUniqueness1631261634964');
INSERT INTO "public"."migrations" VALUES (22, 1631696624528, 'validDurationForDiscount1631696624528');
INSERT INTO "public"."migrations" VALUES (23, 1631800727788, 'nestedReturnReasons1631800727788');
INSERT INTO "public"."migrations" VALUES (24, 1631864388026, 'statusOnProduct1631864388026');
INSERT INTO "public"."migrations" VALUES (25, 1632220294687, 'addNotes1632220294687');
INSERT INTO "public"."migrations" VALUES (26, 1632828114899, 'deleteDateOnShippingOptionRequirements1632828114899');
INSERT INTO "public"."migrations" VALUES (27, 1633512755401, 'extendedUserApi1633512755401');
INSERT INTO "public"."migrations" VALUES (28, 1633614437919, 'addCustomShippingOptions1633614437919');
INSERT INTO "public"."migrations" VALUES (29, 1638543550000, 'orderTaxRateToRealType1638543550000');
INSERT INTO "public"."migrations" VALUES (30, 1638952072999, 'externalIdOrder1638952072999');
INSERT INTO "public"."migrations" VALUES (31, 1641636508055, 'newTaxSystem1641636508055');
INSERT INTO "public"."migrations" VALUES (32, 1644943746861, 'customerGroups1644943746861');
INSERT INTO "public"."migrations" VALUES (33, 1646324713514, 'discountConditions1646324713514');
INSERT INTO "public"."migrations" VALUES (34, 1646915480108, 'updateMoneyAmountAddPriceList1646915480108');
INSERT INTO "public"."migrations" VALUES (35, 1648600574750, 'addLineItemAdjustments1648600574750');
INSERT INTO "public"."migrations" VALUES (36, 1648641130007, 'taxLineConstraints1648641130007');
INSERT INTO "public"."migrations" VALUES (37, 1649775522087, 'addBatchJobModel1649775522087');
INSERT INTO "public"."migrations" VALUES (38, 1656949291839, 'salesChannel1656949291839');
INSERT INTO "public"."migrations" VALUES (39, 1657098186554, 'taxedGiftCardTransactions1657098186554');
INSERT INTO "public"."migrations" VALUES (40, 1657267320181, 'extendedBatchJob1657267320181');
INSERT INTO "public"."migrations" VALUES (41, 1660040729000, 'paymentSessionUniqCartIdProviderId1660040729000');
INSERT INTO "public"."migrations" VALUES (42, 1661345741249, 'multiPaymentCart1661345741249');
INSERT INTO "public"."migrations" VALUES (43, 1661863940645, 'swapFulfillmentStatusRequiresAction1661863940645');
INSERT INTO "public"."migrations" VALUES (44, 1663059812399, 'orderEditing1663059812399');
INSERT INTO "public"."migrations" VALUES (45, 1663059812400, 'lineItemOriginalItemRelation1663059812400');
INSERT INTO "public"."migrations" VALUES (46, 1664880666982, 'paymentCollection1664880666982');
INSERT INTO "public"."migrations" VALUES (47, 1666173221888, 'addAnalyticsConfig1666173221888');
INSERT INTO "public"."migrations" VALUES (48, 1667815005070, 'publishableApiKey1667815005070');
INSERT INTO "public"."migrations" VALUES (49, 1669032280562, 'updateCustomerEmailConstraint_1669032280562');
INSERT INTO "public"."migrations" VALUES (50, 1670855241304, 'addTaxRateToGiftCards1670855241304');
INSERT INTO "public"."migrations" VALUES (51, 1671711415179, 'multiLocation1671711415179');
INSERT INTO "public"."migrations" VALUES (52, 1672906846559, 'productCategory1672906846559');
INSERT INTO "public"."migrations" VALUES (53, 1672906846560, 'paymentSessionIsInitiated1672906846560');
INSERT INTO "public"."migrations" VALUES (54, 1673003729870, 'stagedJobOptions1673003729870');
INSERT INTO "public"."migrations" VALUES (55, 1673550502785, 'uniquePaySessCartId1673550502785');
INSERT INTO "public"."migrations" VALUES (56, 1674455083104, 'productCategoryProduct1674455083104');
INSERT INTO "public"."migrations" VALUES (57, 1675689306130, 'multiLocationSoftDelete1675689306130');
INSERT INTO "public"."migrations" VALUES (58, 1677234878504, 'productCategoryRank1677234878504');
INSERT INTO "public"."migrations" VALUES (59, 1678093365811, 'ensureRequiredQuantity1678093365811');
INSERT INTO "public"."migrations" VALUES (60, 1678093365812, 'lineItemAdjustmentsAmount1678093365812');
INSERT INTO "public"."migrations" VALUES (61, 1679950221063, 'categoryRemoveSoftDelete1679950221063');
INSERT INTO "public"."migrations" VALUES (62, 1679950645253, 'categoryCreateIndexes1679950645253');
INSERT INTO "public"."migrations" VALUES (63, 1679950645254, 'productDomainImprovedIndexes1679950645254');
INSERT INTO "public"."migrations" VALUES (64, 1679950645254, 'productSearchGinIndexes1679950645254');
INSERT INTO "public"."migrations" VALUES (65, 1680714052628, 'addSalesChannelMetadata1680714052628');
INSERT INTO "public"."migrations" VALUES (66, 1680857773272, 'addDescriptionToProductCategory1680857773272');
INSERT INTO "public"."migrations" VALUES (67, 1680857773272, 'lineItemTaxAdjustmentOnCascadeDelete1680857773272');
INSERT INTO "public"."migrations" VALUES (68, 1680857773273, 'addTableProductShippingProfile1680857773273');
INSERT INTO "public"."migrations" VALUES (69, 1680857773273, 'dropProductIdFkSalesChannels1680857773273');
INSERT INTO "public"."migrations" VALUES (70, 1680857773273, 'dropVariantIdFkMoneyAmount1680857773273');
INSERT INTO "public"."migrations" VALUES (71, 1685715079776, 'CreateOnboarding1685715079776');
INSERT INTO "public"."migrations" VALUES (72, 1686062614694, 'AddOnboardingProduct1686062614694');
INSERT INTO "public"."migrations" VALUES (73, 1690996567455, 'CorrectOnboardingFields1690996567455');
INSERT INTO "public"."migrations" VALUES (74, 1692870898423, 'UpdateReturnReasonIndex1692870898423');
INSERT INTO "public"."migrations" VALUES (75, 1692953518123, 'dropMoneyAmountConstraintsForPricingModule1692953518123');
INSERT INTO "public"."migrations" VALUES (76, 1699564794649, 'AddMetadataToProductCategory1699564794649');
INSERT INTO "public"."migrations" VALUES (77, 1701894188811, 'PublishableKeySalesChannelLink1701894188811');
INSERT INTO "public"."migrations" VALUES (78, 1709888477798, 'AlterCustomerUniqueConstraint1709888477798');

-- ----------------------------
-- Table structure for money_amount
-- ----------------------------
DROP TABLE IF EXISTS "public"."money_amount";
CREATE TABLE "public"."money_amount" (
  "id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "currency_code" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "amount" int4 NOT NULL,
  "region_id" varchar COLLATE "pg_catalog"."default",
  "created_at" timestamptz(6) NOT NULL DEFAULT now(),
  "updated_at" timestamptz(6) NOT NULL DEFAULT now(),
  "deleted_at" timestamptz(6),
  "min_quantity" int4,
  "max_quantity" int4,
  "price_list_id" varchar COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of money_amount
-- ----------------------------

-- ----------------------------
-- Table structure for note
-- ----------------------------
DROP TABLE IF EXISTS "public"."note";
CREATE TABLE "public"."note" (
  "id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "value" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "resource_type" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "resource_id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "author_id" varchar COLLATE "pg_catalog"."default",
  "created_at" timestamptz(6) NOT NULL DEFAULT now(),
  "updated_at" timestamptz(6) NOT NULL DEFAULT now(),
  "deleted_at" timestamptz(6),
  "metadata" jsonb
)
;

-- ----------------------------
-- Records of note
-- ----------------------------

-- ----------------------------
-- Table structure for notification
-- ----------------------------
DROP TABLE IF EXISTS "public"."notification";
CREATE TABLE "public"."notification" (
  "id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "event_name" varchar COLLATE "pg_catalog"."default",
  "resource_type" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "resource_id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "customer_id" varchar COLLATE "pg_catalog"."default",
  "to" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "data" jsonb NOT NULL,
  "parent_id" varchar COLLATE "pg_catalog"."default",
  "provider_id" varchar COLLATE "pg_catalog"."default",
  "created_at" timestamptz(6) NOT NULL DEFAULT now(),
  "updated_at" timestamptz(6) NOT NULL DEFAULT now()
)
;

-- ----------------------------
-- Records of notification
-- ----------------------------

-- ----------------------------
-- Table structure for notification_provider
-- ----------------------------
DROP TABLE IF EXISTS "public"."notification_provider";
CREATE TABLE "public"."notification_provider" (
  "id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "is_installed" bool NOT NULL DEFAULT true
)
;

-- ----------------------------
-- Records of notification_provider
-- ----------------------------

-- ----------------------------
-- Table structure for oauth
-- ----------------------------
DROP TABLE IF EXISTS "public"."oauth";
CREATE TABLE "public"."oauth" (
  "id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "display_name" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "application_name" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "install_url" varchar COLLATE "pg_catalog"."default",
  "uninstall_url" varchar COLLATE "pg_catalog"."default",
  "data" jsonb
)
;

-- ----------------------------
-- Records of oauth
-- ----------------------------

-- ----------------------------
-- Table structure for onboarding_state
-- ----------------------------
DROP TABLE IF EXISTS "public"."onboarding_state";
CREATE TABLE "public"."onboarding_state" (
  "id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamptz(6) NOT NULL DEFAULT now(),
  "updated_at" timestamptz(6) NOT NULL DEFAULT now(),
  "current_step" varchar COLLATE "pg_catalog"."default",
  "is_complete" bool NOT NULL,
  "product_id" varchar COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of onboarding_state
-- ----------------------------
INSERT INTO "public"."onboarding_state" VALUES ('onboarding_01HWG0BA14MYT70VJ0N4EFVR3D', '2024-04-27 17:46:06.749262+03', '2024-04-27 17:46:06.749262+03', NULL, 'f', NULL);

-- ----------------------------
-- Table structure for order
-- ----------------------------
DROP TABLE IF EXISTS "public"."order";
CREATE TABLE "public"."order" (
  "id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "status" "public"."order_status_enum" NOT NULL DEFAULT 'pending'::order_status_enum,
  "fulfillment_status" "public"."order_fulfillment_status_enum" NOT NULL DEFAULT 'not_fulfilled'::order_fulfillment_status_enum,
  "payment_status" "public"."order_payment_status_enum" NOT NULL DEFAULT 'not_paid'::order_payment_status_enum,
  "display_id" int4 NOT NULL DEFAULT nextval('order_display_id_seq'::regclass),
  "cart_id" varchar COLLATE "pg_catalog"."default",
  "customer_id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "email" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "billing_address_id" varchar COLLATE "pg_catalog"."default",
  "shipping_address_id" varchar COLLATE "pg_catalog"."default",
  "region_id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "currency_code" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "tax_rate" float4,
  "canceled_at" timestamptz(6),
  "created_at" timestamptz(6) NOT NULL DEFAULT now(),
  "updated_at" timestamptz(6) NOT NULL DEFAULT now(),
  "metadata" jsonb,
  "idempotency_key" varchar COLLATE "pg_catalog"."default",
  "draft_order_id" varchar COLLATE "pg_catalog"."default",
  "no_notification" bool,
  "external_id" varchar COLLATE "pg_catalog"."default",
  "sales_channel_id" varchar COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of order
-- ----------------------------

-- ----------------------------
-- Table structure for order_discounts
-- ----------------------------
DROP TABLE IF EXISTS "public"."order_discounts";
CREATE TABLE "public"."order_discounts" (
  "order_id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "discount_id" varchar COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of order_discounts
-- ----------------------------

-- ----------------------------
-- Table structure for order_edit
-- ----------------------------
DROP TABLE IF EXISTS "public"."order_edit";
CREATE TABLE "public"."order_edit" (
  "id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamptz(6) NOT NULL DEFAULT now(),
  "updated_at" timestamptz(6) NOT NULL DEFAULT now(),
  "order_id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "internal_note" varchar COLLATE "pg_catalog"."default",
  "created_by" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "requested_by" varchar COLLATE "pg_catalog"."default",
  "requested_at" timestamptz(6),
  "confirmed_by" varchar COLLATE "pg_catalog"."default",
  "confirmed_at" timestamptz(6),
  "declined_by" varchar COLLATE "pg_catalog"."default",
  "declined_reason" varchar COLLATE "pg_catalog"."default",
  "declined_at" timestamptz(6),
  "canceled_by" varchar COLLATE "pg_catalog"."default",
  "canceled_at" timestamptz(6),
  "payment_collection_id" varchar COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of order_edit
-- ----------------------------

-- ----------------------------
-- Table structure for order_gift_cards
-- ----------------------------
DROP TABLE IF EXISTS "public"."order_gift_cards";
CREATE TABLE "public"."order_gift_cards" (
  "order_id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "gift_card_id" varchar COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of order_gift_cards
-- ----------------------------

-- ----------------------------
-- Table structure for order_item_change
-- ----------------------------
DROP TABLE IF EXISTS "public"."order_item_change";
CREATE TABLE "public"."order_item_change" (
  "id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamptz(6) NOT NULL DEFAULT now(),
  "updated_at" timestamptz(6) NOT NULL DEFAULT now(),
  "deleted_at" timestamptz(6),
  "type" "public"."order_item_change_type_enum" NOT NULL,
  "order_edit_id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "original_line_item_id" varchar COLLATE "pg_catalog"."default",
  "line_item_id" varchar COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of order_item_change
-- ----------------------------

-- ----------------------------
-- Table structure for payment
-- ----------------------------
DROP TABLE IF EXISTS "public"."payment";
CREATE TABLE "public"."payment" (
  "id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "swap_id" varchar COLLATE "pg_catalog"."default",
  "cart_id" varchar COLLATE "pg_catalog"."default",
  "order_id" varchar COLLATE "pg_catalog"."default",
  "amount" int4 NOT NULL,
  "currency_code" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "amount_refunded" int4 NOT NULL DEFAULT 0,
  "provider_id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "data" jsonb NOT NULL,
  "captured_at" timestamptz(6),
  "canceled_at" timestamptz(6),
  "created_at" timestamptz(6) NOT NULL DEFAULT now(),
  "updated_at" timestamptz(6) NOT NULL DEFAULT now(),
  "metadata" jsonb,
  "idempotency_key" varchar COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of payment
-- ----------------------------

-- ----------------------------
-- Table structure for payment_collection
-- ----------------------------
DROP TABLE IF EXISTS "public"."payment_collection";
CREATE TABLE "public"."payment_collection" (
  "id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamptz(6) NOT NULL DEFAULT now(),
  "updated_at" timestamptz(6) NOT NULL DEFAULT now(),
  "deleted_at" timestamptz(6),
  "type" "public"."PAYMENT_COLLECTION_TYPE_ENUM" NOT NULL,
  "status" "public"."PAYMENT_COLLECTION_STATUS_ENUM" NOT NULL,
  "description" text COLLATE "pg_catalog"."default",
  "amount" int4 NOT NULL,
  "authorized_amount" int4,
  "region_id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "currency_code" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "metadata" jsonb,
  "created_by" varchar COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of payment_collection
-- ----------------------------

-- ----------------------------
-- Table structure for payment_collection_payments
-- ----------------------------
DROP TABLE IF EXISTS "public"."payment_collection_payments";
CREATE TABLE "public"."payment_collection_payments" (
  "payment_collection_id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "payment_id" varchar COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of payment_collection_payments
-- ----------------------------

-- ----------------------------
-- Table structure for payment_collection_sessions
-- ----------------------------
DROP TABLE IF EXISTS "public"."payment_collection_sessions";
CREATE TABLE "public"."payment_collection_sessions" (
  "payment_collection_id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "payment_session_id" varchar COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of payment_collection_sessions
-- ----------------------------

-- ----------------------------
-- Table structure for payment_provider
-- ----------------------------
DROP TABLE IF EXISTS "public"."payment_provider";
CREATE TABLE "public"."payment_provider" (
  "id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "is_installed" bool NOT NULL DEFAULT true
)
;

-- ----------------------------
-- Records of payment_provider
-- ----------------------------
INSERT INTO "public"."payment_provider" VALUES ('manual', 't');

-- ----------------------------
-- Table structure for payment_session
-- ----------------------------
DROP TABLE IF EXISTS "public"."payment_session";
CREATE TABLE "public"."payment_session" (
  "id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "cart_id" varchar COLLATE "pg_catalog"."default",
  "provider_id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "is_selected" bool,
  "status" "public"."payment_session_status_enum" NOT NULL,
  "data" jsonb NOT NULL,
  "created_at" timestamptz(6) NOT NULL DEFAULT now(),
  "updated_at" timestamptz(6) NOT NULL DEFAULT now(),
  "idempotency_key" varchar COLLATE "pg_catalog"."default",
  "payment_authorized_at" timestamptz(6),
  "amount" int4,
  "is_initiated" bool NOT NULL DEFAULT false
)
;

-- ----------------------------
-- Records of payment_session
-- ----------------------------

-- ----------------------------
-- Table structure for price_list
-- ----------------------------
DROP TABLE IF EXISTS "public"."price_list";
CREATE TABLE "public"."price_list" (
  "id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "description" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "type" "public"."price_list_type_enum" NOT NULL DEFAULT 'sale'::price_list_type_enum,
  "status" "public"."price_list_status_enum" NOT NULL DEFAULT 'draft'::price_list_status_enum,
  "starts_at" timestamptz(6),
  "ends_at" timestamptz(6),
  "created_at" timestamptz(6) NOT NULL DEFAULT now(),
  "updated_at" timestamptz(6) NOT NULL DEFAULT now(),
  "deleted_at" timestamptz(6)
)
;

-- ----------------------------
-- Records of price_list
-- ----------------------------

-- ----------------------------
-- Table structure for price_list_customer_groups
-- ----------------------------
DROP TABLE IF EXISTS "public"."price_list_customer_groups";
CREATE TABLE "public"."price_list_customer_groups" (
  "price_list_id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "customer_group_id" varchar COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of price_list_customer_groups
-- ----------------------------

-- ----------------------------
-- Table structure for product
-- ----------------------------
DROP TABLE IF EXISTS "public"."product";
CREATE TABLE "public"."product" (
  "id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "title" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "subtitle" varchar COLLATE "pg_catalog"."default",
  "description" varchar COLLATE "pg_catalog"."default",
  "handle" varchar COLLATE "pg_catalog"."default",
  "is_giftcard" bool NOT NULL DEFAULT false,
  "thumbnail" varchar COLLATE "pg_catalog"."default",
  "weight" int4,
  "length" int4,
  "height" int4,
  "width" int4,
  "hs_code" varchar COLLATE "pg_catalog"."default",
  "origin_country" varchar COLLATE "pg_catalog"."default",
  "mid_code" varchar COLLATE "pg_catalog"."default",
  "material" varchar COLLATE "pg_catalog"."default",
  "created_at" timestamptz(6) NOT NULL DEFAULT now(),
  "updated_at" timestamptz(6) NOT NULL DEFAULT now(),
  "deleted_at" timestamptz(6),
  "metadata" jsonb,
  "collection_id" varchar COLLATE "pg_catalog"."default",
  "type_id" varchar COLLATE "pg_catalog"."default",
  "discountable" bool NOT NULL DEFAULT true,
  "status" "public"."product_status_enum" NOT NULL DEFAULT 'draft'::product_status_enum,
  "external_id" varchar COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of product
-- ----------------------------

-- ----------------------------
-- Table structure for product_category
-- ----------------------------
DROP TABLE IF EXISTS "public"."product_category";
CREATE TABLE "public"."product_category" (
  "id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "name" text COLLATE "pg_catalog"."default" NOT NULL,
  "handle" text COLLATE "pg_catalog"."default" NOT NULL,
  "parent_category_id" varchar COLLATE "pg_catalog"."default",
  "mpath" text COLLATE "pg_catalog"."default",
  "is_active" bool DEFAULT false,
  "is_internal" bool DEFAULT false,
  "created_at" timestamptz(6) NOT NULL DEFAULT now(),
  "updated_at" timestamptz(6) NOT NULL DEFAULT now(),
  "rank" int4 NOT NULL DEFAULT 0,
  "description" text COLLATE "pg_catalog"."default" NOT NULL DEFAULT ''::text,
  "metadata" jsonb
)
;

-- ----------------------------
-- Records of product_category
-- ----------------------------

-- ----------------------------
-- Table structure for product_category_product
-- ----------------------------
DROP TABLE IF EXISTS "public"."product_category_product";
CREATE TABLE "public"."product_category_product" (
  "product_category_id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "product_id" varchar COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of product_category_product
-- ----------------------------

-- ----------------------------
-- Table structure for product_collection
-- ----------------------------
DROP TABLE IF EXISTS "public"."product_collection";
CREATE TABLE "public"."product_collection" (
  "id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "title" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "handle" varchar COLLATE "pg_catalog"."default",
  "created_at" timestamptz(6) NOT NULL DEFAULT now(),
  "updated_at" timestamptz(6) NOT NULL DEFAULT now(),
  "deleted_at" timestamptz(6),
  "metadata" jsonb
)
;

-- ----------------------------
-- Records of product_collection
-- ----------------------------

-- ----------------------------
-- Table structure for product_images
-- ----------------------------
DROP TABLE IF EXISTS "public"."product_images";
CREATE TABLE "public"."product_images" (
  "product_id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "image_id" varchar COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of product_images
-- ----------------------------

-- ----------------------------
-- Table structure for product_option
-- ----------------------------
DROP TABLE IF EXISTS "public"."product_option";
CREATE TABLE "public"."product_option" (
  "id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "title" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamptz(6) NOT NULL DEFAULT now(),
  "updated_at" timestamptz(6) NOT NULL DEFAULT now(),
  "deleted_at" timestamptz(6),
  "metadata" jsonb,
  "product_id" varchar COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of product_option
-- ----------------------------

-- ----------------------------
-- Table structure for product_option_value
-- ----------------------------
DROP TABLE IF EXISTS "public"."product_option_value";
CREATE TABLE "public"."product_option_value" (
  "id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "value" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "option_id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "variant_id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamptz(6) NOT NULL DEFAULT now(),
  "updated_at" timestamptz(6) NOT NULL DEFAULT now(),
  "deleted_at" timestamptz(6),
  "metadata" jsonb
)
;

-- ----------------------------
-- Records of product_option_value
-- ----------------------------

-- ----------------------------
-- Table structure for product_sales_channel
-- ----------------------------
DROP TABLE IF EXISTS "public"."product_sales_channel";
CREATE TABLE "public"."product_sales_channel" (
  "product_id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "sales_channel_id" varchar COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of product_sales_channel
-- ----------------------------

-- ----------------------------
-- Table structure for product_shipping_profile
-- ----------------------------
DROP TABLE IF EXISTS "public"."product_shipping_profile";
CREATE TABLE "public"."product_shipping_profile" (
  "profile_id" text COLLATE "pg_catalog"."default" NOT NULL,
  "product_id" text COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of product_shipping_profile
-- ----------------------------

-- ----------------------------
-- Table structure for product_tag
-- ----------------------------
DROP TABLE IF EXISTS "public"."product_tag";
CREATE TABLE "public"."product_tag" (
  "id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "value" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamptz(6) NOT NULL DEFAULT now(),
  "updated_at" timestamptz(6) NOT NULL DEFAULT now(),
  "deleted_at" timestamptz(6),
  "metadata" jsonb
)
;

-- ----------------------------
-- Records of product_tag
-- ----------------------------

-- ----------------------------
-- Table structure for product_tags
-- ----------------------------
DROP TABLE IF EXISTS "public"."product_tags";
CREATE TABLE "public"."product_tags" (
  "product_id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "product_tag_id" varchar COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of product_tags
-- ----------------------------

-- ----------------------------
-- Table structure for product_tax_rate
-- ----------------------------
DROP TABLE IF EXISTS "public"."product_tax_rate";
CREATE TABLE "public"."product_tax_rate" (
  "product_id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "rate_id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamptz(6) NOT NULL DEFAULT now(),
  "updated_at" timestamptz(6) NOT NULL DEFAULT now(),
  "metadata" jsonb
)
;

-- ----------------------------
-- Records of product_tax_rate
-- ----------------------------

-- ----------------------------
-- Table structure for product_type
-- ----------------------------
DROP TABLE IF EXISTS "public"."product_type";
CREATE TABLE "public"."product_type" (
  "id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "value" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamptz(6) NOT NULL DEFAULT now(),
  "updated_at" timestamptz(6) NOT NULL DEFAULT now(),
  "deleted_at" timestamptz(6),
  "metadata" jsonb
)
;

-- ----------------------------
-- Records of product_type
-- ----------------------------

-- ----------------------------
-- Table structure for product_type_tax_rate
-- ----------------------------
DROP TABLE IF EXISTS "public"."product_type_tax_rate";
CREATE TABLE "public"."product_type_tax_rate" (
  "product_type_id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "rate_id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamptz(6) NOT NULL DEFAULT now(),
  "updated_at" timestamptz(6) NOT NULL DEFAULT now(),
  "metadata" jsonb
)
;

-- ----------------------------
-- Records of product_type_tax_rate
-- ----------------------------

-- ----------------------------
-- Table structure for product_variant
-- ----------------------------
DROP TABLE IF EXISTS "public"."product_variant";
CREATE TABLE "public"."product_variant" (
  "id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "title" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "product_id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "sku" varchar COLLATE "pg_catalog"."default",
  "barcode" varchar COLLATE "pg_catalog"."default",
  "ean" varchar COLLATE "pg_catalog"."default",
  "upc" varchar COLLATE "pg_catalog"."default",
  "inventory_quantity" int4 NOT NULL,
  "allow_backorder" bool NOT NULL DEFAULT false,
  "manage_inventory" bool NOT NULL DEFAULT true,
  "hs_code" varchar COLLATE "pg_catalog"."default",
  "origin_country" varchar COLLATE "pg_catalog"."default",
  "mid_code" varchar COLLATE "pg_catalog"."default",
  "material" varchar COLLATE "pg_catalog"."default",
  "weight" int4,
  "length" int4,
  "height" int4,
  "width" int4,
  "created_at" timestamptz(6) NOT NULL DEFAULT now(),
  "updated_at" timestamptz(6) NOT NULL DEFAULT now(),
  "deleted_at" timestamptz(6),
  "metadata" jsonb,
  "variant_rank" int4 DEFAULT 0
)
;

-- ----------------------------
-- Records of product_variant
-- ----------------------------

-- ----------------------------
-- Table structure for product_variant_inventory_item
-- ----------------------------
DROP TABLE IF EXISTS "public"."product_variant_inventory_item";
CREATE TABLE "public"."product_variant_inventory_item" (
  "id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamptz(6) NOT NULL DEFAULT now(),
  "updated_at" timestamptz(6) NOT NULL DEFAULT now(),
  "inventory_item_id" text COLLATE "pg_catalog"."default" NOT NULL,
  "variant_id" text COLLATE "pg_catalog"."default" NOT NULL,
  "required_quantity" int4 NOT NULL DEFAULT 1,
  "deleted_at" timestamptz(6)
)
;

-- ----------------------------
-- Records of product_variant_inventory_item
-- ----------------------------

-- ----------------------------
-- Table structure for product_variant_money_amount
-- ----------------------------
DROP TABLE IF EXISTS "public"."product_variant_money_amount";
CREATE TABLE "public"."product_variant_money_amount" (
  "id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "money_amount_id" text COLLATE "pg_catalog"."default" NOT NULL,
  "variant_id" text COLLATE "pg_catalog"."default" NOT NULL,
  "deleted_at" timestamptz(6),
  "created_at" timestamptz(6) NOT NULL DEFAULT now(),
  "updated_at" timestamptz(6) NOT NULL DEFAULT now()
)
;

-- ----------------------------
-- Records of product_variant_money_amount
-- ----------------------------

-- ----------------------------
-- Table structure for publishable_api_key
-- ----------------------------
DROP TABLE IF EXISTS "public"."publishable_api_key";
CREATE TABLE "public"."publishable_api_key" (
  "id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamptz(6) NOT NULL DEFAULT now(),
  "updated_at" timestamptz(6) NOT NULL DEFAULT now(),
  "created_by" varchar COLLATE "pg_catalog"."default",
  "revoked_by" varchar COLLATE "pg_catalog"."default",
  "revoked_at" timestamptz(6),
  "title" varchar COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of publishable_api_key
-- ----------------------------
INSERT INTO "public"."publishable_api_key" VALUES ('pk_01HWG0CM6M5P7BNFY95ECMRG38', '2024-04-27 17:47:15.545677+03', '2024-04-27 17:47:15.545677+03', '', NULL, NULL, 'Development');

-- ----------------------------
-- Table structure for publishable_api_key_sales_channel
-- ----------------------------
DROP TABLE IF EXISTS "public"."publishable_api_key_sales_channel";
CREATE TABLE "public"."publishable_api_key_sales_channel" (
  "sales_channel_id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "publishable_key_id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "id" text COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamptz(6) NOT NULL DEFAULT now(),
  "updated_at" timestamptz(6) NOT NULL DEFAULT now(),
  "deleted_at" timestamptz(6)
)
;

-- ----------------------------
-- Records of publishable_api_key_sales_channel
-- ----------------------------
INSERT INTO "public"."publishable_api_key_sales_channel" VALUES ('sc_01HWG0C6MTXSC2TK0SWDK4W0AW', 'pk_01HWG0CM6M5P7BNFY95ECMRG38', 'pksc_01HWG0CM6TGQRFSFYTFRNEN9FM', '2024-04-27 17:47:15.929316+03', '2024-04-27 17:47:15.929316+03', NULL);

-- ----------------------------
-- Table structure for refund
-- ----------------------------
DROP TABLE IF EXISTS "public"."refund";
CREATE TABLE "public"."refund" (
  "id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "order_id" varchar COLLATE "pg_catalog"."default",
  "amount" int4 NOT NULL,
  "note" varchar COLLATE "pg_catalog"."default",
  "reason" "public"."refund_reason_enum" NOT NULL,
  "created_at" timestamptz(6) NOT NULL DEFAULT now(),
  "updated_at" timestamptz(6) NOT NULL DEFAULT now(),
  "metadata" jsonb,
  "idempotency_key" varchar COLLATE "pg_catalog"."default",
  "payment_id" varchar COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of refund
-- ----------------------------

-- ----------------------------
-- Table structure for region
-- ----------------------------
DROP TABLE IF EXISTS "public"."region";
CREATE TABLE "public"."region" (
  "id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "currency_code" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "tax_rate" float4 NOT NULL,
  "tax_code" varchar COLLATE "pg_catalog"."default",
  "created_at" timestamptz(6) NOT NULL DEFAULT now(),
  "updated_at" timestamptz(6) NOT NULL DEFAULT now(),
  "deleted_at" timestamptz(6),
  "metadata" jsonb,
  "gift_cards_taxable" bool NOT NULL DEFAULT true,
  "automatic_taxes" bool NOT NULL DEFAULT true,
  "tax_provider_id" varchar COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of region
-- ----------------------------
INSERT INTO "public"."region" VALUES ('reg_01HWG0CM2FWA5NEPFPA2B1C16Z', 'EU', 'eur', 0, NULL, '2024-04-27 17:47:15.545677+03', '2024-04-27 17:47:15.545677+03', NULL, NULL, 't', 't', NULL);
INSERT INTO "public"."region" VALUES ('reg_01HWG0CM3T1Y4H9XZTE46DVSKX', 'NA', 'usd', 0, NULL, '2024-04-27 17:47:15.545677+03', '2024-04-27 17:47:15.545677+03', NULL, NULL, 't', 't', NULL);

-- ----------------------------
-- Table structure for region_fulfillment_providers
-- ----------------------------
DROP TABLE IF EXISTS "public"."region_fulfillment_providers";
CREATE TABLE "public"."region_fulfillment_providers" (
  "region_id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "provider_id" varchar COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of region_fulfillment_providers
-- ----------------------------
INSERT INTO "public"."region_fulfillment_providers" VALUES ('reg_01HWG0CM2FWA5NEPFPA2B1C16Z', 'manual');
INSERT INTO "public"."region_fulfillment_providers" VALUES ('reg_01HWG0CM3T1Y4H9XZTE46DVSKX', 'manual');

-- ----------------------------
-- Table structure for region_payment_providers
-- ----------------------------
DROP TABLE IF EXISTS "public"."region_payment_providers";
CREATE TABLE "public"."region_payment_providers" (
  "region_id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "provider_id" varchar COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of region_payment_providers
-- ----------------------------
INSERT INTO "public"."region_payment_providers" VALUES ('reg_01HWG0CM2FWA5NEPFPA2B1C16Z', 'manual');
INSERT INTO "public"."region_payment_providers" VALUES ('reg_01HWG0CM3T1Y4H9XZTE46DVSKX', 'manual');

-- ----------------------------
-- Table structure for return
-- ----------------------------
DROP TABLE IF EXISTS "public"."return";
CREATE TABLE "public"."return" (
  "id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "status" "public"."return_status_enum" NOT NULL DEFAULT 'requested'::return_status_enum,
  "swap_id" varchar COLLATE "pg_catalog"."default",
  "order_id" varchar COLLATE "pg_catalog"."default",
  "shipping_data" jsonb,
  "refund_amount" int4 NOT NULL,
  "received_at" timestamptz(6),
  "created_at" timestamptz(6) NOT NULL DEFAULT now(),
  "updated_at" timestamptz(6) NOT NULL DEFAULT now(),
  "metadata" jsonb,
  "idempotency_key" varchar COLLATE "pg_catalog"."default",
  "claim_order_id" varchar COLLATE "pg_catalog"."default",
  "no_notification" bool,
  "location_id" varchar COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of return
-- ----------------------------

-- ----------------------------
-- Table structure for return_item
-- ----------------------------
DROP TABLE IF EXISTS "public"."return_item";
CREATE TABLE "public"."return_item" (
  "return_id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "item_id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "quantity" int4 NOT NULL,
  "is_requested" bool NOT NULL DEFAULT true,
  "requested_quantity" int4,
  "received_quantity" int4,
  "metadata" jsonb,
  "reason_id" varchar COLLATE "pg_catalog"."default",
  "note" varchar COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of return_item
-- ----------------------------

-- ----------------------------
-- Table structure for return_reason
-- ----------------------------
DROP TABLE IF EXISTS "public"."return_reason";
CREATE TABLE "public"."return_reason" (
  "id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "value" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "label" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "description" varchar COLLATE "pg_catalog"."default",
  "created_at" timestamptz(6) NOT NULL DEFAULT now(),
  "updated_at" timestamptz(6) NOT NULL DEFAULT now(),
  "deleted_at" timestamptz(6),
  "metadata" jsonb,
  "parent_return_reason_id" varchar COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of return_reason
-- ----------------------------

-- ----------------------------
-- Table structure for sales_channel
-- ----------------------------
DROP TABLE IF EXISTS "public"."sales_channel";
CREATE TABLE "public"."sales_channel" (
  "id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamptz(6) NOT NULL DEFAULT now(),
  "updated_at" timestamptz(6) NOT NULL DEFAULT now(),
  "deleted_at" timestamptz(6),
  "name" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "description" varchar COLLATE "pg_catalog"."default",
  "is_disabled" bool NOT NULL DEFAULT false,
  "metadata" jsonb
)
;

-- ----------------------------
-- Records of sales_channel
-- ----------------------------
INSERT INTO "public"."sales_channel" VALUES ('sc_01HWG0C6MTXSC2TK0SWDK4W0AW', '2024-04-27 17:47:01.940268+03', '2024-04-27 17:47:01.940268+03', NULL, 'Default Sales Channel', 'Created by Medusa', 'f', NULL);

-- ----------------------------
-- Table structure for sales_channel_location
-- ----------------------------
DROP TABLE IF EXISTS "public"."sales_channel_location";
CREATE TABLE "public"."sales_channel_location" (
  "id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamptz(6) NOT NULL DEFAULT now(),
  "updated_at" timestamptz(6) NOT NULL DEFAULT now(),
  "sales_channel_id" text COLLATE "pg_catalog"."default" NOT NULL,
  "location_id" text COLLATE "pg_catalog"."default" NOT NULL,
  "deleted_at" timestamptz(6)
)
;

-- ----------------------------
-- Records of sales_channel_location
-- ----------------------------

-- ----------------------------
-- Table structure for shipping_method
-- ----------------------------
DROP TABLE IF EXISTS "public"."shipping_method";
CREATE TABLE "public"."shipping_method" (
  "id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "shipping_option_id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "order_id" varchar COLLATE "pg_catalog"."default",
  "cart_id" varchar COLLATE "pg_catalog"."default",
  "swap_id" varchar COLLATE "pg_catalog"."default",
  "return_id" varchar COLLATE "pg_catalog"."default",
  "price" int4 NOT NULL,
  "data" jsonb NOT NULL,
  "claim_order_id" varchar COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of shipping_method
-- ----------------------------

-- ----------------------------
-- Table structure for shipping_method_tax_line
-- ----------------------------
DROP TABLE IF EXISTS "public"."shipping_method_tax_line";
CREATE TABLE "public"."shipping_method_tax_line" (
  "id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "rate" float4 NOT NULL,
  "name" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "code" varchar COLLATE "pg_catalog"."default",
  "created_at" timestamptz(6) NOT NULL DEFAULT now(),
  "updated_at" timestamptz(6) NOT NULL DEFAULT now(),
  "metadata" jsonb,
  "shipping_method_id" varchar COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of shipping_method_tax_line
-- ----------------------------

-- ----------------------------
-- Table structure for shipping_option
-- ----------------------------
DROP TABLE IF EXISTS "public"."shipping_option";
CREATE TABLE "public"."shipping_option" (
  "id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "region_id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "profile_id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "provider_id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "price_type" "public"."shipping_option_price_type_enum" NOT NULL,
  "amount" int4,
  "is_return" bool NOT NULL DEFAULT false,
  "data" jsonb NOT NULL,
  "created_at" timestamptz(6) NOT NULL DEFAULT now(),
  "updated_at" timestamptz(6) NOT NULL DEFAULT now(),
  "deleted_at" timestamptz(6),
  "metadata" jsonb,
  "admin_only" bool NOT NULL DEFAULT false
)
;

-- ----------------------------
-- Records of shipping_option
-- ----------------------------
INSERT INTO "public"."shipping_option" VALUES ('so_01HWG0CM4G5VYCM34TG8YHB1JA', 'PostFake Standard', 'reg_01HWG0CM2FWA5NEPFPA2B1C16Z', 'sp_01HWG0C6KVHFFFQ7NQ2R8T3J1Y', 'manual', 'flat_rate', 1000, 'f', '{"id": "manual-fulfillment"}', '2024-04-27 17:47:15.545677+03', '2024-04-27 17:47:15.545677+03', NULL, NULL, 'f');
INSERT INTO "public"."shipping_option" VALUES ('so_01HWG0CM4W3289BC861VEPRRQJ', 'PostFake Express', 'reg_01HWG0CM2FWA5NEPFPA2B1C16Z', 'sp_01HWG0C6KVHFFFQ7NQ2R8T3J1Y', 'manual', 'flat_rate', 1500, 'f', '{"id": "manual-fulfillment"}', '2024-04-27 17:47:15.545677+03', '2024-04-27 17:47:15.545677+03', NULL, NULL, 'f');
INSERT INTO "public"."shipping_option" VALUES ('so_01HWG0CM55V4CY65XE4NAXHAER', 'PostFake Return', 'reg_01HWG0CM2FWA5NEPFPA2B1C16Z', 'sp_01HWG0C6KVHFFFQ7NQ2R8T3J1Y', 'manual', 'flat_rate', 1000, 't', '{"id": "manual-fulfillment"}', '2024-04-27 17:47:15.545677+03', '2024-04-27 17:47:15.545677+03', NULL, NULL, 'f');
INSERT INTO "public"."shipping_option" VALUES ('so_01HWG0CM5DCVWNCP7CT5WQ6V9S', 'I want to return it myself', 'reg_01HWG0CM2FWA5NEPFPA2B1C16Z', 'sp_01HWG0C6KVHFFFQ7NQ2R8T3J1Y', 'manual', 'flat_rate', 0, 't', '{"id": "manual-fulfillment"}', '2024-04-27 17:47:15.545677+03', '2024-04-27 17:47:15.545677+03', NULL, NULL, 'f');
INSERT INTO "public"."shipping_option" VALUES ('so_01HWG0CM5PPCK2TVCV7R3CSAM9', 'FakeEx Standard', 'reg_01HWG0CM3T1Y4H9XZTE46DVSKX', 'sp_01HWG0C6KVHFFFQ7NQ2R8T3J1Y', 'manual', 'flat_rate', 800, 'f', '{"id": "manual-fulfillment"}', '2024-04-27 17:47:15.545677+03', '2024-04-27 17:47:15.545677+03', NULL, NULL, 'f');
INSERT INTO "public"."shipping_option" VALUES ('so_01HWG0CM5XCABGMXYH9A89PRW6', 'FakeEx Express', 'reg_01HWG0CM3T1Y4H9XZTE46DVSKX', 'sp_01HWG0C6KVHFFFQ7NQ2R8T3J1Y', 'manual', 'flat_rate', 1200, 'f', '{"id": "manual-fulfillment"}', '2024-04-27 17:47:15.545677+03', '2024-04-27 17:47:15.545677+03', NULL, NULL, 'f');
INSERT INTO "public"."shipping_option" VALUES ('so_01HWG0CM64J0Z7V7MZH7K05JV6', 'FakeEx Return', 'reg_01HWG0CM3T1Y4H9XZTE46DVSKX', 'sp_01HWG0C6KVHFFFQ7NQ2R8T3J1Y', 'manual', 'flat_rate', 800, 't', '{"id": "manual-fulfillment"}', '2024-04-27 17:47:15.545677+03', '2024-04-27 17:47:15.545677+03', NULL, NULL, 'f');
INSERT INTO "public"."shipping_option" VALUES ('so_01HWG0CM6B4Q34HYXB4KYZ09GP', 'I want to return it myself', 'reg_01HWG0CM3T1Y4H9XZTE46DVSKX', 'sp_01HWG0C6KVHFFFQ7NQ2R8T3J1Y', 'manual', 'flat_rate', 0, 't', '{"id": "manual-fulfillment"}', '2024-04-27 17:47:15.545677+03', '2024-04-27 17:47:15.545677+03', NULL, NULL, 'f');

-- ----------------------------
-- Table structure for shipping_option_requirement
-- ----------------------------
DROP TABLE IF EXISTS "public"."shipping_option_requirement";
CREATE TABLE "public"."shipping_option_requirement" (
  "id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "shipping_option_id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "type" "public"."shipping_option_requirement_type_enum" NOT NULL,
  "amount" int4 NOT NULL,
  "deleted_at" timestamptz(6)
)
;

-- ----------------------------
-- Records of shipping_option_requirement
-- ----------------------------

-- ----------------------------
-- Table structure for shipping_profile
-- ----------------------------
DROP TABLE IF EXISTS "public"."shipping_profile";
CREATE TABLE "public"."shipping_profile" (
  "id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "type" "public"."shipping_profile_type_enum" NOT NULL,
  "created_at" timestamptz(6) NOT NULL DEFAULT now(),
  "updated_at" timestamptz(6) NOT NULL DEFAULT now(),
  "deleted_at" timestamptz(6),
  "metadata" jsonb
)
;

-- ----------------------------
-- Records of shipping_profile
-- ----------------------------
INSERT INTO "public"."shipping_profile" VALUES ('sp_01HWG0C6KVHFFFQ7NQ2R8T3J1Y', 'Default Shipping Profile', 'default', '2024-04-27 17:47:01.940268+03', '2024-04-27 17:47:01.940268+03', NULL, NULL);
INSERT INTO "public"."shipping_profile" VALUES ('sp_01HWG0C6KY88XSV4GB0RKT3E1A', 'Gift Card Profile', 'gift_card', '2024-04-27 17:47:01.940268+03', '2024-04-27 17:47:01.940268+03', NULL, NULL);

-- ----------------------------
-- Table structure for shipping_tax_rate
-- ----------------------------
DROP TABLE IF EXISTS "public"."shipping_tax_rate";
CREATE TABLE "public"."shipping_tax_rate" (
  "shipping_option_id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "rate_id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamptz(6) NOT NULL DEFAULT now(),
  "updated_at" timestamptz(6) NOT NULL DEFAULT now(),
  "metadata" jsonb
)
;

-- ----------------------------
-- Records of shipping_tax_rate
-- ----------------------------

-- ----------------------------
-- Table structure for staged_job
-- ----------------------------
DROP TABLE IF EXISTS "public"."staged_job";
CREATE TABLE "public"."staged_job" (
  "id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "event_name" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "data" jsonb NOT NULL,
  "options" jsonb NOT NULL DEFAULT '{}'::jsonb
)
;

-- ----------------------------
-- Records of staged_job
-- ----------------------------

-- ----------------------------
-- Table structure for store
-- ----------------------------
DROP TABLE IF EXISTS "public"."store";
CREATE TABLE "public"."store" (
  "id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar COLLATE "pg_catalog"."default" NOT NULL DEFAULT 'Medusa Store'::character varying,
  "default_currency_code" varchar COLLATE "pg_catalog"."default" NOT NULL DEFAULT 'usd'::character varying,
  "swap_link_template" varchar COLLATE "pg_catalog"."default",
  "created_at" timestamptz(6) NOT NULL DEFAULT now(),
  "updated_at" timestamptz(6) NOT NULL DEFAULT now(),
  "metadata" jsonb,
  "payment_link_template" varchar COLLATE "pg_catalog"."default",
  "invite_link_template" varchar COLLATE "pg_catalog"."default",
  "default_sales_channel_id" varchar COLLATE "pg_catalog"."default",
  "default_location_id" varchar COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of store
-- ----------------------------
INSERT INTO "public"."store" VALUES ('store_01HWG0C6JDSXRCGZ467K42N6NW', 'Medusa Store', 'usd', NULL, '2024-04-27 17:47:01.940268+03', '2024-04-27 17:47:01.940268+03', NULL, NULL, NULL, 'sc_01HWG0C6MTXSC2TK0SWDK4W0AW', NULL);

-- ----------------------------
-- Table structure for store_currencies
-- ----------------------------
DROP TABLE IF EXISTS "public"."store_currencies";
CREATE TABLE "public"."store_currencies" (
  "store_id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "currency_code" varchar COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Records of store_currencies
-- ----------------------------
INSERT INTO "public"."store_currencies" VALUES ('store_01HWG0C6JDSXRCGZ467K42N6NW', 'usd');
INSERT INTO "public"."store_currencies" VALUES ('store_01HWG0C6JDSXRCGZ467K42N6NW', 'eur');

-- ----------------------------
-- Table structure for swap
-- ----------------------------
DROP TABLE IF EXISTS "public"."swap";
CREATE TABLE "public"."swap" (
  "id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "fulfillment_status" "public"."swap_fulfillment_status_enum" NOT NULL,
  "payment_status" "public"."swap_payment_status_enum" NOT NULL,
  "order_id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "difference_due" int4,
  "shipping_address_id" varchar COLLATE "pg_catalog"."default",
  "cart_id" varchar COLLATE "pg_catalog"."default",
  "confirmed_at" timestamptz(6),
  "created_at" timestamptz(6) NOT NULL DEFAULT now(),
  "updated_at" timestamptz(6) NOT NULL DEFAULT now(),
  "deleted_at" timestamptz(6),
  "metadata" jsonb,
  "idempotency_key" varchar COLLATE "pg_catalog"."default",
  "no_notification" bool,
  "canceled_at" timestamptz(6),
  "allow_backorder" bool NOT NULL DEFAULT false
)
;

-- ----------------------------
-- Records of swap
-- ----------------------------

-- ----------------------------
-- Table structure for tax_provider
-- ----------------------------
DROP TABLE IF EXISTS "public"."tax_provider";
CREATE TABLE "public"."tax_provider" (
  "id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "is_installed" bool NOT NULL DEFAULT true
)
;

-- ----------------------------
-- Records of tax_provider
-- ----------------------------

-- ----------------------------
-- Table structure for tax_rate
-- ----------------------------
DROP TABLE IF EXISTS "public"."tax_rate";
CREATE TABLE "public"."tax_rate" (
  "id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "rate" float4,
  "code" varchar COLLATE "pg_catalog"."default",
  "name" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "region_id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamptz(6) NOT NULL DEFAULT now(),
  "updated_at" timestamptz(6) NOT NULL DEFAULT now(),
  "metadata" jsonb
)
;

-- ----------------------------
-- Records of tax_rate
-- ----------------------------

-- ----------------------------
-- Table structure for tracking_link
-- ----------------------------
DROP TABLE IF EXISTS "public"."tracking_link";
CREATE TABLE "public"."tracking_link" (
  "id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "url" varchar COLLATE "pg_catalog"."default",
  "tracking_number" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "fulfillment_id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamptz(6) NOT NULL DEFAULT now(),
  "updated_at" timestamptz(6) NOT NULL DEFAULT now(),
  "deleted_at" timestamptz(6),
  "metadata" jsonb,
  "idempotency_key" varchar COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Records of tracking_link
-- ----------------------------

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS "public"."user";
CREATE TABLE "public"."user" (
  "id" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "email" varchar COLLATE "pg_catalog"."default" NOT NULL,
  "first_name" varchar COLLATE "pg_catalog"."default",
  "last_name" varchar COLLATE "pg_catalog"."default",
  "password_hash" varchar COLLATE "pg_catalog"."default",
  "api_token" varchar COLLATE "pg_catalog"."default",
  "created_at" timestamptz(6) NOT NULL DEFAULT now(),
  "updated_at" timestamptz(6) NOT NULL DEFAULT now(),
  "deleted_at" timestamptz(6),
  "metadata" jsonb,
  "role" "public"."user_role_enum" DEFAULT 'member'::user_role_enum
)
;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO "public"."user" VALUES ('usr_01HWG0F8ZS2TRKJHJ2XTEHKXAJ', 'admin@test.com', '', '', 'c2NyeXB0AAEAAAABAAAAAUGZMnFlU1OgAoOuT2nmRi3QDLVkmWpFJFdHrHRcYn6t8a95oxnub1H8rJtrsmf6XJ4jv/A3ISgOiPju2v5wV8NFQmcUBuiTRPeg637DdA9i', NULL, '2024-04-27 17:48:42.728191+03', '2024-04-27 17:48:42.728191+03', NULL, NULL, 'admin');

-- ----------------------------
-- Function structure for gin_extract_query_trgm
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_query_trgm"(text, internal, int2, internal, internal, internal, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_query_trgm"(text, internal, int2, internal, internal, internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/pg_trgm', 'gin_extract_query_trgm'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gin_extract_value_trgm
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_extract_value_trgm"(text, internal);
CREATE OR REPLACE FUNCTION "public"."gin_extract_value_trgm"(text, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/pg_trgm', 'gin_extract_value_trgm'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gin_trgm_consistent
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_trgm_consistent"(internal, int2, text, int4, internal, internal, internal, internal);
CREATE OR REPLACE FUNCTION "public"."gin_trgm_consistent"(internal, int2, text, int4, internal, internal, internal, internal)
  RETURNS "pg_catalog"."bool" AS '$libdir/pg_trgm', 'gin_trgm_consistent'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gin_trgm_triconsistent
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gin_trgm_triconsistent"(internal, int2, text, int4, internal, internal, internal);
CREATE OR REPLACE FUNCTION "public"."gin_trgm_triconsistent"(internal, int2, text, int4, internal, internal, internal)
  RETURNS "pg_catalog"."char" AS '$libdir/pg_trgm', 'gin_trgm_triconsistent'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gtrgm_compress
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gtrgm_compress"(internal);
CREATE OR REPLACE FUNCTION "public"."gtrgm_compress"(internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/pg_trgm', 'gtrgm_compress'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gtrgm_consistent
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gtrgm_consistent"(internal, text, int2, oid, internal);
CREATE OR REPLACE FUNCTION "public"."gtrgm_consistent"(internal, text, int2, oid, internal)
  RETURNS "pg_catalog"."bool" AS '$libdir/pg_trgm', 'gtrgm_consistent'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gtrgm_decompress
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gtrgm_decompress"(internal);
CREATE OR REPLACE FUNCTION "public"."gtrgm_decompress"(internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/pg_trgm', 'gtrgm_decompress'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gtrgm_distance
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gtrgm_distance"(internal, text, int2, oid, internal);
CREATE OR REPLACE FUNCTION "public"."gtrgm_distance"(internal, text, int2, oid, internal)
  RETURNS "pg_catalog"."float8" AS '$libdir/pg_trgm', 'gtrgm_distance'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gtrgm_in
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gtrgm_in"(cstring);
CREATE OR REPLACE FUNCTION "public"."gtrgm_in"(cstring)
  RETURNS "public"."gtrgm" AS '$libdir/pg_trgm', 'gtrgm_in'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gtrgm_options
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gtrgm_options"(internal);
CREATE OR REPLACE FUNCTION "public"."gtrgm_options"(internal)
  RETURNS "pg_catalog"."void" AS '$libdir/pg_trgm', 'gtrgm_options'
  LANGUAGE c IMMUTABLE
  COST 1;

-- ----------------------------
-- Function structure for gtrgm_out
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gtrgm_out"("public"."gtrgm");
CREATE OR REPLACE FUNCTION "public"."gtrgm_out"("public"."gtrgm")
  RETURNS "pg_catalog"."cstring" AS '$libdir/pg_trgm', 'gtrgm_out'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gtrgm_penalty
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gtrgm_penalty"(internal, internal, internal);
CREATE OR REPLACE FUNCTION "public"."gtrgm_penalty"(internal, internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/pg_trgm', 'gtrgm_penalty'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gtrgm_picksplit
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gtrgm_picksplit"(internal, internal);
CREATE OR REPLACE FUNCTION "public"."gtrgm_picksplit"(internal, internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/pg_trgm', 'gtrgm_picksplit'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gtrgm_same
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gtrgm_same"("public"."gtrgm", "public"."gtrgm", internal);
CREATE OR REPLACE FUNCTION "public"."gtrgm_same"("public"."gtrgm", "public"."gtrgm", internal)
  RETURNS "pg_catalog"."internal" AS '$libdir/pg_trgm', 'gtrgm_same'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for gtrgm_union
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."gtrgm_union"(internal, internal);
CREATE OR REPLACE FUNCTION "public"."gtrgm_union"(internal, internal)
  RETURNS "public"."gtrgm" AS '$libdir/pg_trgm', 'gtrgm_union'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for set_limit
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."set_limit"(float4);
CREATE OR REPLACE FUNCTION "public"."set_limit"(float4)
  RETURNS "pg_catalog"."float4" AS '$libdir/pg_trgm', 'set_limit'
  LANGUAGE c VOLATILE STRICT
  COST 1;

-- ----------------------------
-- Function structure for show_limit
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."show_limit"();
CREATE OR REPLACE FUNCTION "public"."show_limit"()
  RETURNS "pg_catalog"."float4" AS '$libdir/pg_trgm', 'show_limit'
  LANGUAGE c STABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for show_trgm
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."show_trgm"(text);
CREATE OR REPLACE FUNCTION "public"."show_trgm"(text)
  RETURNS "pg_catalog"."_text" AS '$libdir/pg_trgm', 'show_trgm'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for similarity
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."similarity"(text, text);
CREATE OR REPLACE FUNCTION "public"."similarity"(text, text)
  RETURNS "pg_catalog"."float4" AS '$libdir/pg_trgm', 'similarity'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for similarity_dist
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."similarity_dist"(text, text);
CREATE OR REPLACE FUNCTION "public"."similarity_dist"(text, text)
  RETURNS "pg_catalog"."float4" AS '$libdir/pg_trgm', 'similarity_dist'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for similarity_op
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."similarity_op"(text, text);
CREATE OR REPLACE FUNCTION "public"."similarity_op"(text, text)
  RETURNS "pg_catalog"."bool" AS '$libdir/pg_trgm', 'similarity_op'
  LANGUAGE c STABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for strict_word_similarity
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."strict_word_similarity"(text, text);
CREATE OR REPLACE FUNCTION "public"."strict_word_similarity"(text, text)
  RETURNS "pg_catalog"."float4" AS '$libdir/pg_trgm', 'strict_word_similarity'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for strict_word_similarity_commutator_op
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."strict_word_similarity_commutator_op"(text, text);
CREATE OR REPLACE FUNCTION "public"."strict_word_similarity_commutator_op"(text, text)
  RETURNS "pg_catalog"."bool" AS '$libdir/pg_trgm', 'strict_word_similarity_commutator_op'
  LANGUAGE c STABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for strict_word_similarity_dist_commutator_op
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."strict_word_similarity_dist_commutator_op"(text, text);
CREATE OR REPLACE FUNCTION "public"."strict_word_similarity_dist_commutator_op"(text, text)
  RETURNS "pg_catalog"."float4" AS '$libdir/pg_trgm', 'strict_word_similarity_dist_commutator_op'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for strict_word_similarity_dist_op
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."strict_word_similarity_dist_op"(text, text);
CREATE OR REPLACE FUNCTION "public"."strict_word_similarity_dist_op"(text, text)
  RETURNS "pg_catalog"."float4" AS '$libdir/pg_trgm', 'strict_word_similarity_dist_op'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for strict_word_similarity_op
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."strict_word_similarity_op"(text, text);
CREATE OR REPLACE FUNCTION "public"."strict_word_similarity_op"(text, text)
  RETURNS "pg_catalog"."bool" AS '$libdir/pg_trgm', 'strict_word_similarity_op'
  LANGUAGE c STABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for word_similarity
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."word_similarity"(text, text);
CREATE OR REPLACE FUNCTION "public"."word_similarity"(text, text)
  RETURNS "pg_catalog"."float4" AS '$libdir/pg_trgm', 'word_similarity'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for word_similarity_commutator_op
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."word_similarity_commutator_op"(text, text);
CREATE OR REPLACE FUNCTION "public"."word_similarity_commutator_op"(text, text)
  RETURNS "pg_catalog"."bool" AS '$libdir/pg_trgm', 'word_similarity_commutator_op'
  LANGUAGE c STABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for word_similarity_dist_commutator_op
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."word_similarity_dist_commutator_op"(text, text);
CREATE OR REPLACE FUNCTION "public"."word_similarity_dist_commutator_op"(text, text)
  RETURNS "pg_catalog"."float4" AS '$libdir/pg_trgm', 'word_similarity_dist_commutator_op'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for word_similarity_dist_op
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."word_similarity_dist_op"(text, text);
CREATE OR REPLACE FUNCTION "public"."word_similarity_dist_op"(text, text)
  RETURNS "pg_catalog"."float4" AS '$libdir/pg_trgm', 'word_similarity_dist_op'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for word_similarity_op
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."word_similarity_op"(text, text);
CREATE OR REPLACE FUNCTION "public"."word_similarity_op"(text, text)
  RETURNS "pg_catalog"."bool" AS '$libdir/pg_trgm', 'word_similarity_op'
  LANGUAGE c STABLE STRICT
  COST 1;

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."country_id_seq"
OWNED BY "public"."country"."id";
SELECT setval('"public"."country_id_seq"', 250, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."draft_order_display_id_seq"
OWNED BY "public"."draft_order"."display_id";
SELECT setval('"public"."draft_order_display_id_seq"', 1, false);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."migrations_id_seq"
OWNED BY "public"."migrations"."id";
SELECT setval('"public"."migrations_id_seq"', 78, true);

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."order_display_id_seq"
OWNED BY "public"."order"."display_id";
SELECT setval('"public"."order_display_id_seq"', 1, false);

-- ----------------------------
-- Indexes structure for table address
-- ----------------------------
CREATE INDEX "IDX_9c9614b2f9d01665800ea8dbff" ON "public"."address" USING btree (
  "customer_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table address
-- ----------------------------
ALTER TABLE "public"."address" ADD CONSTRAINT "PK_d92de1f82754668b5f5f5dd4fd5" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table analytics_config
-- ----------------------------
CREATE UNIQUE INDEX "IDX_379ca70338ce9991f3affdeedf" ON "public"."analytics_config" USING btree (
  "id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "user_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
) WHERE deleted_at IS NULL;

-- ----------------------------
-- Primary Key structure for table analytics_config
-- ----------------------------
ALTER TABLE "public"."analytics_config" ADD CONSTRAINT "PK_93505647c5d7cb479becb810b0f" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table batch_job
-- ----------------------------
ALTER TABLE "public"."batch_job" ADD CONSTRAINT "PK_e57f84d485145d5be96bc6d871e" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table cart
-- ----------------------------
CREATE INDEX "IDX_242205c81c1152fab1b6e84847" ON "public"."cart" USING btree (
  "customer_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "IDX_484c329f4783be4e18e5e2ff09" ON "public"."cart" USING btree (
  "region_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "IDX_6b9c66b5e36f7c827dfaa092f9" ON "public"."cart" USING btree (
  "billing_address_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "IDX_9d1a161434c610aae7c3df2dc7" ON "public"."cart" USING btree (
  "payment_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "IDX_ced15a9a695d2b5db9dabce763" ON "public"."cart" USING btree (
  "shipping_address_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table cart
-- ----------------------------
ALTER TABLE "public"."cart" ADD CONSTRAINT "REL_9d1a161434c610aae7c3df2dc7" UNIQUE ("payment_id");

-- ----------------------------
-- Primary Key structure for table cart
-- ----------------------------
ALTER TABLE "public"."cart" ADD CONSTRAINT "PK_c524ec48751b9b5bcfbf6e59be7" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table cart_discounts
-- ----------------------------
CREATE INDEX "IDX_6680319ebe1f46d18f106191d5" ON "public"."cart_discounts" USING btree (
  "cart_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "IDX_8df75ef4f35f217768dc113545" ON "public"."cart_discounts" USING btree (
  "discount_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table cart_discounts
-- ----------------------------
ALTER TABLE "public"."cart_discounts" ADD CONSTRAINT "PK_10bd412c9071ccc0cf555afd9bb" PRIMARY KEY ("cart_id", "discount_id");

-- ----------------------------
-- Indexes structure for table cart_gift_cards
-- ----------------------------
CREATE INDEX "IDX_0fb38b6d167793192bc126d835" ON "public"."cart_gift_cards" USING btree (
  "gift_card_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "IDX_d38047a90f3d42f0be7909e8ae" ON "public"."cart_gift_cards" USING btree (
  "cart_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table cart_gift_cards
-- ----------------------------
ALTER TABLE "public"."cart_gift_cards" ADD CONSTRAINT "PK_2389be82bf0ef3635e2014c9ef1" PRIMARY KEY ("cart_id", "gift_card_id");

-- ----------------------------
-- Indexes structure for table claim_image
-- ----------------------------
CREATE INDEX "IDX_21cbfedd83d736d86f4c6f4ce5" ON "public"."claim_image" USING btree (
  "claim_item_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table claim_image
-- ----------------------------
ALTER TABLE "public"."claim_image" ADD CONSTRAINT "PK_7c49e44bfe8840ca7d917890101" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table claim_item
-- ----------------------------
CREATE INDEX "IDX_64980511ca32c8e92b417644af" ON "public"."claim_item" USING btree (
  "variant_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "IDX_6e0cad0daef76bb642675910b9" ON "public"."claim_item" USING btree (
  "item_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "IDX_900a9c3834257304396b2b0fe7" ON "public"."claim_item" USING btree (
  "claim_order_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table claim_item
-- ----------------------------
ALTER TABLE "public"."claim_item" ADD CONSTRAINT "PK_5679662039bc4c7c6bc7fa1be2d" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table claim_item_tags
-- ----------------------------
CREATE INDEX "IDX_c2c0f3edf39515bd15432afe6e" ON "public"."claim_item_tags" USING btree (
  "item_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "IDX_dc9bbf9fcb9ba458d25d512811" ON "public"."claim_item_tags" USING btree (
  "tag_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table claim_item_tags
-- ----------------------------
ALTER TABLE "public"."claim_item_tags" ADD CONSTRAINT "PK_54ab8ce0f7e99167068188fbd81" PRIMARY KEY ("item_id", "tag_id");

-- ----------------------------
-- Indexes structure for table claim_order
-- ----------------------------
CREATE INDEX "IDX_017d58bf8260c6e1a2588d258e" ON "public"."claim_order" USING btree (
  "shipping_address_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "IDX_f49e3974465d3c3a33d449d3f3" ON "public"."claim_order" USING btree (
  "order_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table claim_order
-- ----------------------------
ALTER TABLE "public"."claim_order" ADD CONSTRAINT "PK_8981f5595a4424021466aa4c7a4" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table claim_tag
-- ----------------------------
CREATE INDEX "IDX_ec10c54769877840c132260e4a" ON "public"."claim_tag" USING btree (
  "value" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table claim_tag
-- ----------------------------
ALTER TABLE "public"."claim_tag" ADD CONSTRAINT "PK_7761180541142a5926501018d34" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table country
-- ----------------------------
CREATE INDEX "IDX_b1aac8314662fa6b25569a575b" ON "public"."country" USING btree (
  "region_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE UNIQUE INDEX "IDX_e78901b1131eaf8203d9b1cb5f" ON "public"."country" USING btree (
  "iso_2" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table country
-- ----------------------------
ALTER TABLE "public"."country" ADD CONSTRAINT "PK_bf6e37c231c4f4ea56dcd887269" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table currency
-- ----------------------------
ALTER TABLE "public"."currency" ADD CONSTRAINT "PK_723472e41cae44beb0763f4039c" PRIMARY KEY ("code");

-- ----------------------------
-- Indexes structure for table custom_shipping_option
-- ----------------------------
CREATE INDEX "IDX_44090cb11b06174cbcc667e91c" ON "public"."custom_shipping_option" USING btree (
  "shipping_option_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "IDX_93caeb1bb70d37c1d36d6701a7" ON "public"."custom_shipping_option" USING btree (
  "cart_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table custom_shipping_option
-- ----------------------------
ALTER TABLE "public"."custom_shipping_option" ADD CONSTRAINT "UQ_0f838b122a9a01d921aa1cdb669" UNIQUE ("shipping_option_id", "cart_id");

-- ----------------------------
-- Primary Key structure for table custom_shipping_option
-- ----------------------------
ALTER TABLE "public"."custom_shipping_option" ADD CONSTRAINT "PK_8dfcb5c1172c29eec4a728420cc" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table customer
-- ----------------------------
CREATE INDEX "IDX_8abe81b9aac151ae60bf507ad1" ON "public"."customer" USING btree (
  "billing_address_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE UNIQUE INDEX "IDX_unique_email_for_guests_and_customer_accounts" ON "public"."customer" USING btree (
  "email" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "has_account" "pg_catalog"."bool_ops" ASC NULLS LAST
) WHERE deleted_at IS NULL;

-- ----------------------------
-- Uniques structure for table customer
-- ----------------------------
ALTER TABLE "public"."customer" ADD CONSTRAINT "REL_8abe81b9aac151ae60bf507ad1" UNIQUE ("billing_address_id");

-- ----------------------------
-- Primary Key structure for table customer
-- ----------------------------
ALTER TABLE "public"."customer" ADD CONSTRAINT "PK_a7a13f4cacb744524e44dfdad32" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table customer_group
-- ----------------------------
CREATE UNIQUE INDEX "IDX_c4c3a5225a7a1f0af782c40abc" ON "public"."customer_group" USING btree (
  "name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
) WHERE deleted_at IS NULL;

-- ----------------------------
-- Primary Key structure for table customer_group
-- ----------------------------
ALTER TABLE "public"."customer_group" ADD CONSTRAINT "PK_88e7da3ff7262d9e0a35aa3664e" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table customer_group_customers
-- ----------------------------
CREATE INDEX "IDX_3c6412d076292f439269abe1a2" ON "public"."customer_group_customers" USING btree (
  "customer_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "IDX_620330964db8d2999e67b0dbe3" ON "public"."customer_group_customers" USING btree (
  "customer_group_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table customer_group_customers
-- ----------------------------
ALTER TABLE "public"."customer_group_customers" ADD CONSTRAINT "PK_e28a55e34ad1e2d3df9a0ac86d3" PRIMARY KEY ("customer_group_id", "customer_id");

-- ----------------------------
-- Indexes structure for table discount
-- ----------------------------
CREATE INDEX "IDX_ac2c280de3701b2d66f6817f76" ON "public"."discount" USING btree (
  "rule_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE UNIQUE INDEX "IDX_f65bf52e2239ace276ece2b2f4" ON "public"."discount" USING btree (
  "code" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
) WHERE deleted_at IS NULL;

-- ----------------------------
-- Primary Key structure for table discount
-- ----------------------------
ALTER TABLE "public"."discount" ADD CONSTRAINT "PK_d05d8712e429673e459e7f1cddb" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table discount_condition
-- ----------------------------
CREATE INDEX "IDX_efff700651718e452ca9580a62" ON "public"."discount_condition" USING btree (
  "discount_rule_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table discount_condition
-- ----------------------------
ALTER TABLE "public"."discount_condition" ADD CONSTRAINT "dctypeuniq" UNIQUE ("type", "operator", "discount_rule_id");

-- ----------------------------
-- Primary Key structure for table discount_condition
-- ----------------------------
ALTER TABLE "public"."discount_condition" ADD CONSTRAINT "PK_e6b81d83133ddc21a2baf2e2204" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table discount_condition_customer_group
-- ----------------------------
CREATE INDEX "IDX_4d5f98645a67545d8dea42e2eb" ON "public"."discount_condition_customer_group" USING btree (
  "customer_group_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "IDX_8486ee16e69013c645d0b8716b" ON "public"."discount_condition_customer_group" USING btree (
  "condition_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table discount_condition_customer_group
-- ----------------------------
ALTER TABLE "public"."discount_condition_customer_group" ADD CONSTRAINT "PK_cdc8b2277169a16b8b7d4c73e0e" PRIMARY KEY ("customer_group_id", "condition_id");

-- ----------------------------
-- Indexes structure for table discount_condition_product
-- ----------------------------
CREATE INDEX "IDX_c759f53b2e48e8cfb50638fe4e" ON "public"."discount_condition_product" USING btree (
  "product_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "IDX_f05132301e95bdab4ba1cf29a2" ON "public"."discount_condition_product" USING btree (
  "condition_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table discount_condition_product
-- ----------------------------
ALTER TABLE "public"."discount_condition_product" ADD CONSTRAINT "PK_994eb4529fdbf14450d64ec17e8" PRIMARY KEY ("product_id", "condition_id");

-- ----------------------------
-- Indexes structure for table discount_condition_product_collection
-- ----------------------------
CREATE INDEX "IDX_a0b05dc4257abe639cb75f8eae" ON "public"."discount_condition_product_collection" USING btree (
  "product_collection_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "IDX_a1c4f9cfb599ad1f0db39cadd5" ON "public"."discount_condition_product_collection" USING btree (
  "condition_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table discount_condition_product_collection
-- ----------------------------
ALTER TABLE "public"."discount_condition_product_collection" ADD CONSTRAINT "PK_b3508fc787aa4a38705866cbb6d" PRIMARY KEY ("product_collection_id", "condition_id");

-- ----------------------------
-- Indexes structure for table discount_condition_product_tag
-- ----------------------------
CREATE INDEX "IDX_01486cc9dc6b36bf658685535f" ON "public"."discount_condition_product_tag" USING btree (
  "product_tag_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "IDX_fbb2499551ed074526f3ee3624" ON "public"."discount_condition_product_tag" USING btree (
  "condition_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table discount_condition_product_tag
-- ----------------------------
ALTER TABLE "public"."discount_condition_product_tag" ADD CONSTRAINT "PK_a95382c1e62205b121aa058682b" PRIMARY KEY ("product_tag_id", "condition_id");

-- ----------------------------
-- Indexes structure for table discount_condition_product_type
-- ----------------------------
CREATE INDEX "IDX_6ef23ce0b1d9cf9b5b833e52b9" ON "public"."discount_condition_product_type" USING btree (
  "condition_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "IDX_e706deb68f52ab2756119b9e70" ON "public"."discount_condition_product_type" USING btree (
  "product_type_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table discount_condition_product_type
-- ----------------------------
ALTER TABLE "public"."discount_condition_product_type" ADD CONSTRAINT "PK_35d538a5a24399d0df978df12ed" PRIMARY KEY ("product_type_id", "condition_id");

-- ----------------------------
-- Indexes structure for table discount_regions
-- ----------------------------
CREATE INDEX "IDX_a21a7ffbe420d492eb46c305fe" ON "public"."discount_regions" USING btree (
  "region_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "IDX_f4194aa81073f3fab8aa86906f" ON "public"."discount_regions" USING btree (
  "discount_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table discount_regions
-- ----------------------------
ALTER TABLE "public"."discount_regions" ADD CONSTRAINT "PK_15974566a8b6e04a7c754e85b75" PRIMARY KEY ("discount_id", "region_id");

-- ----------------------------
-- Primary Key structure for table discount_rule
-- ----------------------------
ALTER TABLE "public"."discount_rule" ADD CONSTRAINT "PK_ac2c280de3701b2d66f6817f760" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table discount_rule_products
-- ----------------------------
CREATE INDEX "IDX_4e0739e5f0244c08d41174ca08" ON "public"."discount_rule_products" USING btree (
  "discount_rule_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "IDX_be66106a673b88a81c603abe7e" ON "public"."discount_rule_products" USING btree (
  "product_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table discount_rule_products
-- ----------------------------
ALTER TABLE "public"."discount_rule_products" ADD CONSTRAINT "PK_351c8c92f5d27283c445cd022ee" PRIMARY KEY ("discount_rule_id", "product_id");

-- ----------------------------
-- Indexes structure for table draft_order
-- ----------------------------
CREATE INDEX "IDX_5bd11d0e2a9628128e2c26fd0a" ON "public"."draft_order" USING btree (
  "cart_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "IDX_8f6dd6c49202f1466ebf21e77d" ON "public"."draft_order" USING btree (
  "order_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "IDX_e87cc617a22ef4edce5601edab" ON "public"."draft_order" USING btree (
  "display_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table draft_order
-- ----------------------------
ALTER TABLE "public"."draft_order" ADD CONSTRAINT "REL_5bd11d0e2a9628128e2c26fd0a" UNIQUE ("cart_id");
ALTER TABLE "public"."draft_order" ADD CONSTRAINT "REL_8f6dd6c49202f1466ebf21e77d" UNIQUE ("order_id");

-- ----------------------------
-- Primary Key structure for table draft_order
-- ----------------------------
ALTER TABLE "public"."draft_order" ADD CONSTRAINT "PK_f478946c183d98f8d88a94cfcd7" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table fulfillment
-- ----------------------------
CREATE INDEX "IDX_a52e234f729db789cf473297a5" ON "public"."fulfillment" USING btree (
  "swap_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "IDX_beb35a6de60a6c4f91d5ae57e4" ON "public"."fulfillment" USING btree (
  "provider_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "IDX_d73e55964e0ff2db8f03807d52" ON "public"."fulfillment" USING btree (
  "claim_order_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "IDX_f129acc85e346a10eed12b86fc" ON "public"."fulfillment" USING btree (
  "order_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table fulfillment
-- ----------------------------
ALTER TABLE "public"."fulfillment" ADD CONSTRAINT "PK_50c102da132afffae660585981f" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table fulfillment_item
-- ----------------------------
ALTER TABLE "public"."fulfillment_item" ADD CONSTRAINT "PK_bc3e8a388de75db146a249922e0" PRIMARY KEY ("fulfillment_id", "item_id");

-- ----------------------------
-- Primary Key structure for table fulfillment_provider
-- ----------------------------
ALTER TABLE "public"."fulfillment_provider" ADD CONSTRAINT "PK_beb35a6de60a6c4f91d5ae57e44" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table gift_card
-- ----------------------------
CREATE UNIQUE INDEX "IDX_53cb5605fa42e82b4d47b47bda" ON "public"."gift_card" USING btree (
  "code" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "IDX_b6bcf8c3903097b84e85154eed" ON "public"."gift_card" USING btree (
  "region_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "IDX_dfc1f02bb0552e79076aa58dbb" ON "public"."gift_card" USING btree (
  "order_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table gift_card
-- ----------------------------
ALTER TABLE "public"."gift_card" ADD CONSTRAINT "PK_af4e338d2d41035042843ad641f" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table gift_card_transaction
-- ----------------------------
CREATE INDEX "IDX_d7d441b81012f87d4265fa57d2" ON "public"."gift_card_transaction" USING btree (
  "order_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table gift_card_transaction
-- ----------------------------
ALTER TABLE "public"."gift_card_transaction" ADD CONSTRAINT "gcuniq" UNIQUE ("gift_card_id", "order_id");

-- ----------------------------
-- Primary Key structure for table gift_card_transaction
-- ----------------------------
ALTER TABLE "public"."gift_card_transaction" ADD CONSTRAINT "PK_cfb5b4ba5447a507aef87d73fe7" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table idempotency_key
-- ----------------------------
CREATE UNIQUE INDEX "IDX_a421bf4588d0004a9b0c0fe84f" ON "public"."idempotency_key" USING btree (
  "idempotency_key" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table idempotency_key
-- ----------------------------
ALTER TABLE "public"."idempotency_key" ADD CONSTRAINT "PK_213f125e14469be304f9ff1d452" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table image
-- ----------------------------
ALTER TABLE "public"."image" ADD CONSTRAINT "PK_d6db1ab4ee9ad9dbe86c64e4cc3" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table invite
-- ----------------------------
CREATE UNIQUE INDEX "IDX_6b0ce4b4bcfd24491510bf19d1" ON "public"."invite" USING btree (
  "user_email" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table invite
-- ----------------------------
ALTER TABLE "public"."invite" ADD CONSTRAINT "PK_fc9fa190e5a3c5d80604a4f63e1" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table line_item
-- ----------------------------
CREATE INDEX "IDX_118e3c48f09a7728f41023c94e" ON "public"."line_item" USING btree (
  "claim_order_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "IDX_27283ee631862266d0f1c68064" ON "public"."line_item" USING btree (
  "cart_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "IDX_3fa354d8d1233ff81097b2fcb6" ON "public"."line_item" USING btree (
  "swap_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "IDX_43a2b24495fe1d9fc2a9c835bc" ON "public"."line_item" USING btree (
  "order_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "IDX_5371cbaa3be5200f373d24e3d5" ON "public"."line_item" USING btree (
  "variant_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE UNIQUE INDEX "unique_li_original_item_id_order_edit_id" ON "public"."line_item" USING btree (
  "order_edit_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "original_item_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
) WHERE original_item_id IS NOT NULL AND order_edit_id IS NOT NULL;

-- ----------------------------
-- Checks structure for table line_item
-- ----------------------------
ALTER TABLE "public"."line_item" ADD CONSTRAINT "CHK_91f40396d847f6ecfd9f752bf8" CHECK (returned_quantity <= quantity);
ALTER TABLE "public"."line_item" ADD CONSTRAINT "CHK_0cd85e15610d11b553d5e8fda6" CHECK (shipped_quantity <= fulfilled_quantity);
ALTER TABLE "public"."line_item" ADD CONSTRAINT "CHK_c61716c68f5ad5de2834c827d3" CHECK (fulfilled_quantity <= quantity);
ALTER TABLE "public"."line_item" ADD CONSTRAINT "CHK_64eef00a5064887634f1680866" CHECK (quantity > 0);

-- ----------------------------
-- Primary Key structure for table line_item
-- ----------------------------
ALTER TABLE "public"."line_item" ADD CONSTRAINT "PK_cce6b13e67fa506d1d9618ac68b" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table line_item_adjustment
-- ----------------------------
CREATE INDEX "IDX_2f41b20a71f30e60471d7e3769" ON "public"."line_item_adjustment" USING btree (
  "discount_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "IDX_be9aea2ccf3567007b6227da4d" ON "public"."line_item_adjustment" USING btree (
  "item_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE UNIQUE INDEX "IDX_bf701b88d2041392a288785ada" ON "public"."line_item_adjustment" USING btree (
  "discount_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "item_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
) WHERE discount_id IS NOT NULL;

-- ----------------------------
-- Primary Key structure for table line_item_adjustment
-- ----------------------------
ALTER TABLE "public"."line_item_adjustment" ADD CONSTRAINT "PK_2b1360103753df2dc8257c2c8c3" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table line_item_tax_line
-- ----------------------------
CREATE INDEX "IDX_5077fa54b0d037e984385dfe8a" ON "public"."line_item_tax_line" USING btree (
  "item_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table line_item_tax_line
-- ----------------------------
ALTER TABLE "public"."line_item_tax_line" ADD CONSTRAINT "UQ_3c2af51043ed7243e7d9775a2ad" UNIQUE ("item_id", "code");

-- ----------------------------
-- Primary Key structure for table line_item_tax_line
-- ----------------------------
ALTER TABLE "public"."line_item_tax_line" ADD CONSTRAINT "PK_4a0f4322fcd5ce4af85727f89a8" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table migrations
-- ----------------------------
ALTER TABLE "public"."migrations" ADD CONSTRAINT "PK_8c82d7f526340ab734260ea46be" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table money_amount
-- ----------------------------
CREATE INDEX "IDX_money_amount_currency_code" ON "public"."money_amount" USING btree (
  "currency_code" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "idx_money_amount_region_id" ON "public"."money_amount" USING btree (
  "region_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table money_amount
-- ----------------------------
ALTER TABLE "public"."money_amount" ADD CONSTRAINT "PK_022e49a7e21a8dfb820f788778a" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table note
-- ----------------------------
CREATE INDEX "IDX_3287f98befad26c3a7dab088cf" ON "public"."note" USING btree (
  "resource_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "IDX_f74980b411cf94af523a72af7d" ON "public"."note" USING btree (
  "resource_type" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table note
-- ----------------------------
ALTER TABLE "public"."note" ADD CONSTRAINT "PK_96d0c172a4fba276b1bbed43058" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table notification
-- ----------------------------
CREATE INDEX "IDX_b5df0f53a74b9d0c0a2b652c88" ON "public"."notification" USING btree (
  "customer_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "IDX_df1494d263740fcfb1d09a98fc" ON "public"."notification" USING btree (
  "resource_type" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "IDX_ea6a358d9ce41c16499aae55f9" ON "public"."notification" USING btree (
  "resource_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table notification
-- ----------------------------
ALTER TABLE "public"."notification" ADD CONSTRAINT "PK_705b6c7cdf9b2c2ff7ac7872cb7" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table notification_provider
-- ----------------------------
ALTER TABLE "public"."notification_provider" ADD CONSTRAINT "PK_0425c2423e2ce9fdfd5c23761d9" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table oauth
-- ----------------------------
CREATE UNIQUE INDEX "IDX_c49c061b1a686843c5d673506f" ON "public"."oauth" USING btree (
  "application_name" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table oauth
-- ----------------------------
ALTER TABLE "public"."oauth" ADD CONSTRAINT "PK_a957b894e50eb16b969c0640a8d" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table onboarding_state
-- ----------------------------
ALTER TABLE "public"."onboarding_state" ADD CONSTRAINT "PK_891b72628471aada55d7b8c9410" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table order
-- ----------------------------
CREATE INDEX "IDX_19b0c6293443d1b464f604c331" ON "public"."order" USING btree (
  "shipping_address_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "IDX_5568d3b9ce9f7abeeb37511ecf" ON "public"."order" USING btree (
  "billing_address_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "IDX_579e01fb94f4f58db480857e05" ON "public"."order" USING btree (
  "display_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "IDX_c99a206eb11ad45f6b7f04f2dc" ON "public"."order" USING btree (
  "cart_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "IDX_cd7812c96209c5bdd48a6b858b" ON "public"."order" USING btree (
  "customer_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "IDX_e1fcce2b18dbcdbe0a5ba9a68b" ON "public"."order" USING btree (
  "region_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "IDX_order_currency_code" ON "public"."order" USING btree (
  "currency_code" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table order
-- ----------------------------
ALTER TABLE "public"."order" ADD CONSTRAINT "REL_c99a206eb11ad45f6b7f04f2dc" UNIQUE ("cart_id");
ALTER TABLE "public"."order" ADD CONSTRAINT "UQ_727b872f86c7378474a8fa46147" UNIQUE ("draft_order_id");

-- ----------------------------
-- Primary Key structure for table order
-- ----------------------------
ALTER TABLE "public"."order" ADD CONSTRAINT "PK_1031171c13130102495201e3e20" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table order_discounts
-- ----------------------------
CREATE INDEX "IDX_0fc1ec4e3db9001ad60c19daf1" ON "public"."order_discounts" USING btree (
  "discount_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "IDX_e7b488cebe333f449398769b2c" ON "public"."order_discounts" USING btree (
  "order_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table order_discounts
-- ----------------------------
ALTER TABLE "public"."order_discounts" ADD CONSTRAINT "PK_a7418714ffceebc125bf6d8fcfe" PRIMARY KEY ("order_id", "discount_id");

-- ----------------------------
-- Indexes structure for table order_edit
-- ----------------------------
CREATE INDEX "IDX_order_edit_order_id" ON "public"."order_edit" USING btree (
  "order_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "IDX_order_edit_payment_collection_id" ON "public"."order_edit" USING btree (
  "payment_collection_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table order_edit
-- ----------------------------
ALTER TABLE "public"."order_edit" ADD CONSTRAINT "PK_58ab6acf2e84b4e827f5f846f7a" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table order_gift_cards
-- ----------------------------
CREATE INDEX "IDX_e62ff11e4730bb3adfead979ee" ON "public"."order_gift_cards" USING btree (
  "order_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "IDX_f2bb9f71e95b315eb24b2b84cb" ON "public"."order_gift_cards" USING btree (
  "gift_card_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table order_gift_cards
-- ----------------------------
ALTER TABLE "public"."order_gift_cards" ADD CONSTRAINT "PK_49a8ec66a6625d7c2e3526e05b4" PRIMARY KEY ("order_id", "gift_card_id");

-- ----------------------------
-- Uniques structure for table order_item_change
-- ----------------------------
ALTER TABLE "public"."order_item_change" ADD CONSTRAINT "UQ_da93cee3ca0dd50a5246268c2e9" UNIQUE ("order_edit_id", "line_item_id");
ALTER TABLE "public"."order_item_change" ADD CONSTRAINT "UQ_5b7a99181e4db2ea821be0b6196" UNIQUE ("order_edit_id", "original_line_item_id");
ALTER TABLE "public"."order_item_change" ADD CONSTRAINT "REL_5f9688929761f7df108b630e64" UNIQUE ("line_item_id");

-- ----------------------------
-- Primary Key structure for table order_item_change
-- ----------------------------
ALTER TABLE "public"."order_item_change" ADD CONSTRAINT "PK_d6eb138f77ffdee83567b85af0c" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table payment
-- ----------------------------
CREATE INDEX "IDX_4665f17abc1e81dd58330e5854" ON "public"."payment" USING btree (
  "cart_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "IDX_aac4855eadda71aa1e4b6d7684" ON "public"."payment" USING btree (
  "cart_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
) WHERE canceled_at IS NOT NULL;
CREATE INDEX "IDX_c17aff091441b7c25ec3d68d36" ON "public"."payment" USING btree (
  "swap_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "IDX_ea94f42b6c88e9191c3649d752" ON "public"."payment" USING btree (
  "provider_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "IDX_f5221735ace059250daac9d980" ON "public"."payment" USING btree (
  "order_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "IDX_payment_currency_code" ON "public"."payment" USING btree (
  "currency_code" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE UNIQUE INDEX "UniquePaymentActive" ON "public"."payment" USING btree (
  "cart_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
) WHERE canceled_at IS NULL;

-- ----------------------------
-- Uniques structure for table payment
-- ----------------------------
ALTER TABLE "public"."payment" ADD CONSTRAINT "REL_c17aff091441b7c25ec3d68d36" UNIQUE ("swap_id");

-- ----------------------------
-- Primary Key structure for table payment
-- ----------------------------
ALTER TABLE "public"."payment" ADD CONSTRAINT "PK_fcaec7df5adf9cac408c686b2ab" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table payment_collection
-- ----------------------------
CREATE INDEX "IDX_payment_collection_currency_code" ON "public"."payment_collection" USING btree (
  "currency_code" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
) WHERE deleted_at IS NULL;
CREATE INDEX "IDX_payment_collection_region_id" ON "public"."payment_collection" USING btree (
  "region_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
) WHERE deleted_at IS NULL;

-- ----------------------------
-- Primary Key structure for table payment_collection
-- ----------------------------
ALTER TABLE "public"."payment_collection" ADD CONSTRAINT "PK_payment_collection_id" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table payment_collection_payments
-- ----------------------------
CREATE INDEX "IDX_payment_collection_payments_payment_collection_id" ON "public"."payment_collection_payments" USING btree (
  "payment_collection_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "IDX_payment_collection_payments_payment_id" ON "public"."payment_collection_payments" USING btree (
  "payment_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table payment_collection_payments
-- ----------------------------
ALTER TABLE "public"."payment_collection_payments" ADD CONSTRAINT "PK_payment_collection_payments" PRIMARY KEY ("payment_collection_id", "payment_id");

-- ----------------------------
-- Indexes structure for table payment_collection_sessions
-- ----------------------------
CREATE INDEX "IDX_payment_collection_sessions_payment_collection_id" ON "public"."payment_collection_sessions" USING btree (
  "payment_collection_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "IDX_payment_collection_sessions_payment_session_id" ON "public"."payment_collection_sessions" USING btree (
  "payment_session_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table payment_collection_sessions
-- ----------------------------
ALTER TABLE "public"."payment_collection_sessions" ADD CONSTRAINT "PK_payment_collection_sessions" PRIMARY KEY ("payment_collection_id", "payment_session_id");

-- ----------------------------
-- Primary Key structure for table payment_provider
-- ----------------------------
ALTER TABLE "public"."payment_provider" ADD CONSTRAINT "PK_ea94f42b6c88e9191c3649d7522" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table payment_session
-- ----------------------------
CREATE INDEX "IDX_d18ad72f2fb7c87f075825b6f8" ON "public"."payment_session" USING btree (
  "provider_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "IDX_d25ba0787e1510ddc5d442ebcf" ON "public"."payment_session" USING btree (
  "cart_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE UNIQUE INDEX "UniqPaymentSessionCartIdProviderId" ON "public"."payment_session" USING btree (
  "cart_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "provider_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
) WHERE cart_id IS NOT NULL;

-- ----------------------------
-- Uniques structure for table payment_session
-- ----------------------------
ALTER TABLE "public"."payment_session" ADD CONSTRAINT "OneSelected" UNIQUE ("cart_id", "is_selected");

-- ----------------------------
-- Primary Key structure for table payment_session
-- ----------------------------
ALTER TABLE "public"."payment_session" ADD CONSTRAINT "PK_a1a91b20f7f3b1e5afb5485cbcd" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table price_list
-- ----------------------------
ALTER TABLE "public"."price_list" ADD CONSTRAINT "PK_52ea7826468b1c889cb2c28df03" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table price_list_customer_groups
-- ----------------------------
CREATE INDEX "IDX_52875734e9dd69064f0041f4d9" ON "public"."price_list_customer_groups" USING btree (
  "price_list_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "IDX_c5516f550433c9b1c2630d787a" ON "public"."price_list_customer_groups" USING btree (
  "customer_group_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table price_list_customer_groups
-- ----------------------------
ALTER TABLE "public"."price_list_customer_groups" ADD CONSTRAINT "PK_1afcbe15cc8782dc80c05707df9" PRIMARY KEY ("price_list_id", "customer_group_id");

-- ----------------------------
-- Indexes structure for table product
-- ----------------------------
CREATE UNIQUE INDEX "IDX_cf9cc6c3f2e6414b992223fff1" ON "public"."product" USING btree (
  "handle" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
) WHERE deleted_at IS NULL;
CREATE INDEX "idx_gin_product_description" ON "public"."product" USING gin (
  "description" COLLATE "pg_catalog"."default" "public"."gin_trgm_ops"
) WHERE deleted_at IS NULL;
CREATE INDEX "idx_gin_product_title" ON "public"."product" USING gin (
  "title" COLLATE "pg_catalog"."default" "public"."gin_trgm_ops"
) WHERE deleted_at IS NULL;

-- ----------------------------
-- Primary Key structure for table product
-- ----------------------------
ALTER TABLE "public"."product" ADD CONSTRAINT "PK_bebc9158e480b949565b4dc7a82" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table product_category
-- ----------------------------
CREATE INDEX "IDX_product_category_active_public" ON "public"."product_category" USING btree (
  "parent_category_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "is_active" "pg_catalog"."bool_ops" ASC NULLS LAST,
  "is_internal" "pg_catalog"."bool_ops" ASC NULLS LAST
) WHERE is_active IS TRUE AND is_internal IS FALSE;
CREATE UNIQUE INDEX "IDX_product_category_handle" ON "public"."product_category" USING btree (
  "handle" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "IDX_product_category_path" ON "public"."product_category" USING btree (
  "mpath" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE UNIQUE INDEX "UniqProductCategoryParentIdRank" ON "public"."product_category" USING btree (
  "parent_category_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "rank" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Checks structure for table product_category
-- ----------------------------
ALTER TABLE "public"."product_category" ADD CONSTRAINT "product_category_rank_check" CHECK (rank >= 0);

-- ----------------------------
-- Primary Key structure for table product_category
-- ----------------------------
ALTER TABLE "public"."product_category" ADD CONSTRAINT "PK_qgguwbn1cwstxk93efl0px9oqwt" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table product_category_product
-- ----------------------------
CREATE INDEX "IDX_pcp_product_category_id" ON "public"."product_category_product" USING btree (
  "product_category_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "IDX_pcp_product_id" ON "public"."product_category_product" USING btree (
  "product_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE UNIQUE INDEX "IDX_upcp_product_id_product_category_id" ON "public"."product_category_product" USING btree (
  "product_category_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "product_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Indexes structure for table product_collection
-- ----------------------------
CREATE UNIQUE INDEX "IDX_6f234f058bbbea810dce1d04d0" ON "public"."product_collection" USING btree (
  "handle" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
) WHERE deleted_at IS NULL;
CREATE INDEX "idx_gin_product_collection" ON "public"."product_collection" USING gin (
  "title" COLLATE "pg_catalog"."default" "public"."gin_trgm_ops"
) WHERE deleted_at IS NULL;

-- ----------------------------
-- Primary Key structure for table product_collection
-- ----------------------------
ALTER TABLE "public"."product_collection" ADD CONSTRAINT "PK_49d419fc77d3aed46c835c558ac" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table product_images
-- ----------------------------
CREATE INDEX "IDX_2212515ba306c79f42c46a99db" ON "public"."product_images" USING btree (
  "image_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "IDX_4f166bb8c2bfcef2498d97b406" ON "public"."product_images" USING btree (
  "product_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table product_images
-- ----------------------------
ALTER TABLE "public"."product_images" ADD CONSTRAINT "PK_10de97980da2e939c4c0e8423f2" PRIMARY KEY ("product_id", "image_id");

-- ----------------------------
-- Primary Key structure for table product_option
-- ----------------------------
ALTER TABLE "public"."product_option" ADD CONSTRAINT "PK_4cf3c467e9bc764bdd32c4cd938" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table product_option_value
-- ----------------------------
CREATE INDEX "idx_product_option_value_option_id" ON "public"."product_option_value" USING btree (
  "option_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "idx_product_option_value_variant_id" ON "public"."product_option_value" USING btree (
  "variant_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table product_option_value
-- ----------------------------
ALTER TABLE "public"."product_option_value" ADD CONSTRAINT "PK_2ab71ed3b21be5800905c621535" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table product_sales_channel
-- ----------------------------
CREATE INDEX "IDX_37341bad297fe5cca91f921032" ON "public"."product_sales_channel" USING btree (
  "sales_channel_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "IDX_5a4d5e1e60f97633547821ec8d" ON "public"."product_sales_channel" USING btree (
  "product_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table product_sales_channel
-- ----------------------------
ALTER TABLE "public"."product_sales_channel" ADD CONSTRAINT "PK_fd29b6a8bd641052628dee19583" PRIMARY KEY ("product_id", "sales_channel_id");

-- ----------------------------
-- Indexes structure for table product_shipping_profile
-- ----------------------------
CREATE INDEX "idx_product_shipping_profile_product_id" ON "public"."product_shipping_profile" USING btree (
  "product_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "idx_product_shipping_profile_profile_id" ON "public"."product_shipping_profile" USING btree (
  "profile_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE UNIQUE INDEX "idx_product_shipping_profile_profile_id_product_id_unique" ON "public"."product_shipping_profile" USING btree (
  "profile_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST,
  "product_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table product_tag
-- ----------------------------
ALTER TABLE "public"."product_tag" ADD CONSTRAINT "PK_1439455c6528caa94fcc8564fda" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table product_tags
-- ----------------------------
CREATE INDEX "IDX_21683a063fe82dafdf681ecc9c" ON "public"."product_tags" USING btree (
  "product_tag_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "IDX_5b0c6fc53c574299ecc7f9ee22" ON "public"."product_tags" USING btree (
  "product_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table product_tags
-- ----------------------------
ALTER TABLE "public"."product_tags" ADD CONSTRAINT "PK_1cf5c9537e7198df494b71b993f" PRIMARY KEY ("product_id", "product_tag_id");

-- ----------------------------
-- Indexes structure for table product_tax_rate
-- ----------------------------
CREATE INDEX "IDX_1d04aebeabb6a89f87e536a124" ON "public"."product_tax_rate" USING btree (
  "product_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "IDX_2484cf14c437a04586b07e7ddd" ON "public"."product_tax_rate" USING btree (
  "rate_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table product_tax_rate
-- ----------------------------
ALTER TABLE "public"."product_tax_rate" ADD CONSTRAINT "PK_326257ce468df46cd5c8c5922e9" PRIMARY KEY ("product_id", "rate_id");

-- ----------------------------
-- Primary Key structure for table product_type
-- ----------------------------
ALTER TABLE "public"."product_type" ADD CONSTRAINT "PK_e0843930fbb8854fe36ca39dae1" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table product_type_tax_rate
-- ----------------------------
CREATE INDEX "IDX_25a3138bb236f63d9bb6c8ff11" ON "public"."product_type_tax_rate" USING btree (
  "product_type_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "IDX_ece65a774192b34253abc4cd67" ON "public"."product_type_tax_rate" USING btree (
  "rate_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table product_type_tax_rate
-- ----------------------------
ALTER TABLE "public"."product_type_tax_rate" ADD CONSTRAINT "PK_ddc9242de1d99bc7674969289f0" PRIMARY KEY ("product_type_id", "rate_id");

-- ----------------------------
-- Indexes structure for table product_variant
-- ----------------------------
CREATE UNIQUE INDEX "IDX_045d4a149c09f4704e0bc08dd4" ON "public"."product_variant" USING btree (
  "barcode" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
) WHERE deleted_at IS NULL;
CREATE UNIQUE INDEX "IDX_2ca8cfbdafb998ecfd6d340389" ON "public"."product_variant" USING btree (
  "sku" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
) WHERE deleted_at IS NULL;
CREATE UNIQUE INDEX "IDX_aa16f61348be02dd07ce3fc54e" ON "public"."product_variant" USING btree (
  "upc" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
) WHERE deleted_at IS NULL;
CREATE UNIQUE INDEX "IDX_b5b6225539ee8501082fbc0714" ON "public"."product_variant" USING btree (
  "ean" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
) WHERE deleted_at IS NULL;
CREATE INDEX "IDX_ca67dd080aac5ecf99609960cd" ON "public"."product_variant" USING btree (
  "product_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "idx_gin_product_variant_sku" ON "public"."product_variant" USING gin (
  "sku" COLLATE "pg_catalog"."default" "public"."gin_trgm_ops"
) WHERE deleted_at IS NULL;
CREATE INDEX "idx_gin_product_variant_title" ON "public"."product_variant" USING gin (
  "title" COLLATE "pg_catalog"."default" "public"."gin_trgm_ops"
) WHERE deleted_at IS NULL;

-- ----------------------------
-- Primary Key structure for table product_variant
-- ----------------------------
ALTER TABLE "public"."product_variant" ADD CONSTRAINT "PK_1ab69c9935c61f7c70791ae0a9f" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table product_variant_inventory_item
-- ----------------------------
CREATE INDEX "IDX_product_variant_inventory_item_inventory_item_id" ON "public"."product_variant_inventory_item" USING btree (
  "inventory_item_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
) WHERE deleted_at IS NULL;
CREATE INDEX "IDX_product_variant_inventory_item_variant_id" ON "public"."product_variant_inventory_item" USING btree (
  "variant_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
) WHERE deleted_at IS NULL;

-- ----------------------------
-- Uniques structure for table product_variant_inventory_item
-- ----------------------------
ALTER TABLE "public"."product_variant_inventory_item" ADD CONSTRAINT "UQ_c9be7c1b11a1a729eb51d1b6bca" UNIQUE ("variant_id", "inventory_item_id");

-- ----------------------------
-- Primary Key structure for table product_variant_inventory_item
-- ----------------------------
ALTER TABLE "public"."product_variant_inventory_item" ADD CONSTRAINT "PK_9a1188b8d36f4d198303b4f7efa" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table product_variant_money_amount
-- ----------------------------
CREATE UNIQUE INDEX "idx_product_variant_money_amount_money_amount_id_unique" ON "public"."product_variant_money_amount" USING btree (
  "money_amount_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "idx_product_variant_money_amount_variant_id" ON "public"."product_variant_money_amount" USING btree (
  "variant_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table product_variant_money_amount
-- ----------------------------
ALTER TABLE "public"."product_variant_money_amount" ADD CONSTRAINT "PK_product_variant_money_amount" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table publishable_api_key
-- ----------------------------
ALTER TABLE "public"."publishable_api_key" ADD CONSTRAINT "PK_9e613278673a87de92c606b4494" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table publishable_api_key_sales_channel
-- ----------------------------
CREATE INDEX "IDX_id_publishable_api_key_sales_channel" ON "public"."publishable_api_key_sales_channel" USING btree (
  "id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table publishable_api_key_sales_channel
-- ----------------------------
ALTER TABLE "public"."publishable_api_key_sales_channel" ADD CONSTRAINT "PK_68eaeb14bdac8954460054c567c" PRIMARY KEY ("sales_channel_id", "publishable_key_id");

-- ----------------------------
-- Indexes structure for table refund
-- ----------------------------
CREATE INDEX "IDX_eec9d9af4ca098e19ea6b499ea" ON "public"."refund" USING btree (
  "order_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "IDX_refund_payment_id" ON "public"."refund" USING btree (
  "payment_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table refund
-- ----------------------------
ALTER TABLE "public"."refund" ADD CONSTRAINT "PK_f1cefa2e60d99b206c46c1116e5" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table region
-- ----------------------------
CREATE INDEX "IDX_region_currency_code" ON "public"."region" USING btree (
  "currency_code" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table region
-- ----------------------------
ALTER TABLE "public"."region" ADD CONSTRAINT "PK_5f48ffc3af96bc486f5f3f3a6da" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table region_fulfillment_providers
-- ----------------------------
CREATE INDEX "IDX_37f361c38a18d12a3fa3158d0c" ON "public"."region_fulfillment_providers" USING btree (
  "provider_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "IDX_c556e14eff4d6f03db593df955" ON "public"."region_fulfillment_providers" USING btree (
  "region_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table region_fulfillment_providers
-- ----------------------------
ALTER TABLE "public"."region_fulfillment_providers" ADD CONSTRAINT "PK_5b7d928a1fb50d6803868cfab3a" PRIMARY KEY ("region_id", "provider_id");

-- ----------------------------
-- Indexes structure for table region_payment_providers
-- ----------------------------
CREATE INDEX "IDX_3a6947180aeec283cd92c59ebb" ON "public"."region_payment_providers" USING btree (
  "provider_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "IDX_8aaa78ba90d3802edac317df86" ON "public"."region_payment_providers" USING btree (
  "region_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table region_payment_providers
-- ----------------------------
ALTER TABLE "public"."region_payment_providers" ADD CONSTRAINT "PK_9fa1e69914d3dd752de6b1da407" PRIMARY KEY ("region_id", "provider_id");

-- ----------------------------
-- Indexes structure for table return
-- ----------------------------
CREATE INDEX "IDX_71773d56eb2bacb922bc328339" ON "public"."return" USING btree (
  "claim_order_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "IDX_bad82d7bff2b08b87094bfac3d" ON "public"."return" USING btree (
  "swap_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "IDX_d4bd17f918fc6c332b74a368c3" ON "public"."return" USING btree (
  "order_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table return
-- ----------------------------
ALTER TABLE "public"."return" ADD CONSTRAINT "REL_bad82d7bff2b08b87094bfac3d" UNIQUE ("swap_id");
ALTER TABLE "public"."return" ADD CONSTRAINT "UQ_71773d56eb2bacb922bc3283398" UNIQUE ("claim_order_id");

-- ----------------------------
-- Primary Key structure for table return
-- ----------------------------
ALTER TABLE "public"."return" ADD CONSTRAINT "PK_c8ad68d13e76d75d803b5aeebc4" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table return_item
-- ----------------------------
ALTER TABLE "public"."return_item" ADD CONSTRAINT "PK_46409dc1dd5f38509b9000c3069" PRIMARY KEY ("return_id", "item_id");

-- ----------------------------
-- Indexes structure for table return_reason
-- ----------------------------
CREATE UNIQUE INDEX "IDX_return_reason_value" ON "public"."return_reason" USING btree (
  "value" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
) WHERE deleted_at IS NULL;

-- ----------------------------
-- Primary Key structure for table return_reason
-- ----------------------------
ALTER TABLE "public"."return_reason" ADD CONSTRAINT "PK_95fd1172973165790903e65660a" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table sales_channel
-- ----------------------------
ALTER TABLE "public"."sales_channel" ADD CONSTRAINT "PK_d1eb0b923ea5a0eb1e0916191f1" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table sales_channel_location
-- ----------------------------
CREATE INDEX "IDX_sales_channel_location_location_id" ON "public"."sales_channel_location" USING btree (
  "location_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
) WHERE deleted_at IS NULL;
CREATE INDEX "IDX_sales_channel_location_sales_channel_id" ON "public"."sales_channel_location" USING btree (
  "sales_channel_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
) WHERE deleted_at IS NULL;

-- ----------------------------
-- Primary Key structure for table sales_channel_location
-- ----------------------------
ALTER TABLE "public"."sales_channel_location" ADD CONSTRAINT "PK_afd2c2c52634bc8280a9c9ee533" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table shipping_method
-- ----------------------------
CREATE INDEX "IDX_1d9ad62038998c3a85c77a53cf" ON "public"."shipping_method" USING btree (
  "return_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "IDX_5267705a43d547e232535b656c" ON "public"."shipping_method" USING btree (
  "order_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "IDX_d783a66d1c91c0858752c933e6" ON "public"."shipping_method" USING btree (
  "claim_order_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "IDX_d92993a7d554d84571f4eea1d1" ON "public"."shipping_method" USING btree (
  "cart_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "IDX_fb94fa8d5ca940daa2a58139f8" ON "public"."shipping_method" USING btree (
  "swap_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "IDX_fc963e94854bff2714ca84cd19" ON "public"."shipping_method" USING btree (
  "shipping_option_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table shipping_method
-- ----------------------------
ALTER TABLE "public"."shipping_method" ADD CONSTRAINT "REL_1d9ad62038998c3a85c77a53cf" UNIQUE ("return_id");

-- ----------------------------
-- Checks structure for table shipping_method
-- ----------------------------
ALTER TABLE "public"."shipping_method" ADD CONSTRAINT "CHK_a7020b08665bbd64d84a6641cf" CHECK (claim_order_id IS NOT NULL OR order_id IS NOT NULL OR cart_id IS NOT NULL OR swap_id IS NOT NULL OR return_id IS NOT NULL);
ALTER TABLE "public"."shipping_method" ADD CONSTRAINT "CHK_64c6812fe7815be30d688df513" CHECK (price >= 0);

-- ----------------------------
-- Primary Key structure for table shipping_method
-- ----------------------------
ALTER TABLE "public"."shipping_method" ADD CONSTRAINT "PK_b9b0adfad3c6b99229c1e7d4865" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table shipping_method_tax_line
-- ----------------------------
CREATE INDEX "IDX_926ca9f29014af8091722dede0" ON "public"."shipping_method_tax_line" USING btree (
  "shipping_method_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table shipping_method_tax_line
-- ----------------------------
ALTER TABLE "public"."shipping_method_tax_line" ADD CONSTRAINT "UQ_cd147fca71e50bc954139fa3104" UNIQUE ("shipping_method_id", "code");

-- ----------------------------
-- Primary Key structure for table shipping_method_tax_line
-- ----------------------------
ALTER TABLE "public"."shipping_method_tax_line" ADD CONSTRAINT "PK_54c94f5908aacbd51cf0a73edb1" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table shipping_option
-- ----------------------------
CREATE INDEX "IDX_5c58105f1752fca0f4ce69f466" ON "public"."shipping_option" USING btree (
  "region_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "IDX_a0e206bfaed3cb63c186091734" ON "public"."shipping_option" USING btree (
  "provider_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "IDX_c951439af4c98bf2bd7fb8726c" ON "public"."shipping_option" USING btree (
  "profile_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Checks structure for table shipping_option
-- ----------------------------
ALTER TABLE "public"."shipping_option" ADD CONSTRAINT "CHK_7a367f5901ae0a5b0df75aee38" CHECK (amount >= 0);

-- ----------------------------
-- Primary Key structure for table shipping_option
-- ----------------------------
ALTER TABLE "public"."shipping_option" ADD CONSTRAINT "PK_2e56fddaa65f3a26d402e5d786e" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table shipping_option_requirement
-- ----------------------------
CREATE INDEX "IDX_012a62ba743e427b5ebe9dee18" ON "public"."shipping_option_requirement" USING btree (
  "shipping_option_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table shipping_option_requirement
-- ----------------------------
ALTER TABLE "public"."shipping_option_requirement" ADD CONSTRAINT "PK_a0ff15442606d9f783602cb23a7" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table shipping_profile
-- ----------------------------
ALTER TABLE "public"."shipping_profile" ADD CONSTRAINT "PK_c8120e4543a5a3a121f2968a1ec" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table shipping_tax_rate
-- ----------------------------
CREATE INDEX "IDX_346e0016cf045b998074774764" ON "public"."shipping_tax_rate" USING btree (
  "rate_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "IDX_f672727ab020df6c50fb64c1a7" ON "public"."shipping_tax_rate" USING btree (
  "shipping_option_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table shipping_tax_rate
-- ----------------------------
ALTER TABLE "public"."shipping_tax_rate" ADD CONSTRAINT "PK_bcd93b14d7e2695365d383f5eae" PRIMARY KEY ("shipping_option_id", "rate_id");

-- ----------------------------
-- Primary Key structure for table staged_job
-- ----------------------------
ALTER TABLE "public"."staged_job" ADD CONSTRAINT "PK_9a28fb48c46c5509faf43ac8c8d" PRIMARY KEY ("id");

-- ----------------------------
-- Uniques structure for table store
-- ----------------------------
ALTER TABLE "public"."store" ADD CONSTRAINT "UQ_61b0f48cccbb5f41c750bac7286" UNIQUE ("default_sales_channel_id");

-- ----------------------------
-- Primary Key structure for table store
-- ----------------------------
ALTER TABLE "public"."store" ADD CONSTRAINT "PK_f3172007d4de5ae8e7692759d79" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table store_currencies
-- ----------------------------
CREATE INDEX "IDX_82a6bbb0b527c20a0002ddcbd6" ON "public"."store_currencies" USING btree (
  "currency_code" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE INDEX "IDX_b4f4b63d1736689b7008980394" ON "public"."store_currencies" USING btree (
  "store_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table store_currencies
-- ----------------------------
ALTER TABLE "public"."store_currencies" ADD CONSTRAINT "PK_0f2bff3bccc785c320a4df836de" PRIMARY KEY ("store_id", "currency_code");

-- ----------------------------
-- Indexes structure for table swap
-- ----------------------------
CREATE INDEX "IDX_52dd74e8c989aa5665ad2852b8" ON "public"."swap" USING btree (
  "order_id" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Uniques structure for table swap
-- ----------------------------
ALTER TABLE "public"."swap" ADD CONSTRAINT "REL_402e8182bc553e082f6380020b" UNIQUE ("cart_id");

-- ----------------------------
-- Primary Key structure for table swap
-- ----------------------------
ALTER TABLE "public"."swap" ADD CONSTRAINT "PK_4a10d0f359339acef77e7f986d9" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table tax_provider
-- ----------------------------
ALTER TABLE "public"."tax_provider" ADD CONSTRAINT "PK_b198bf82ba6a317c11763d99b99" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table tax_rate
-- ----------------------------
ALTER TABLE "public"."tax_rate" ADD CONSTRAINT "PK_23b71b53f650c0b39e99ccef4fd" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table tracking_link
-- ----------------------------
ALTER TABLE "public"."tracking_link" ADD CONSTRAINT "PK_fcfd77feb9012ec2126d7c0bfb6" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table user
-- ----------------------------
CREATE UNIQUE INDEX "IDX_ba8de19442d86957a3aa3b5006" ON "public"."user" USING btree (
  "email" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
) WHERE deleted_at IS NULL;

-- ----------------------------
-- Primary Key structure for table user
-- ----------------------------
ALTER TABLE "public"."user" ADD CONSTRAINT "PK_cace4a159ff9f2512dd42373760" PRIMARY KEY ("id");

-- ----------------------------
-- Foreign Keys structure for table address
-- ----------------------------
ALTER TABLE "public"."address" ADD CONSTRAINT "FK_6df8c6bf969a51d24c1980c4ff4" FOREIGN KEY ("country_code") REFERENCES "public"."country" ("iso_2") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."address" ADD CONSTRAINT "FK_9c9614b2f9d01665800ea8dbff7" FOREIGN KEY ("customer_id") REFERENCES "public"."customer" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table batch_job
-- ----------------------------
ALTER TABLE "public"."batch_job" ADD CONSTRAINT "FK_fa53ca4f5fd90605b532802a626" FOREIGN KEY ("created_by") REFERENCES "public"."user" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table cart
-- ----------------------------
ALTER TABLE "public"."cart" ADD CONSTRAINT "FK_242205c81c1152fab1b6e848470" FOREIGN KEY ("customer_id") REFERENCES "public"."customer" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."cart" ADD CONSTRAINT "FK_484c329f4783be4e18e5e2ff090" FOREIGN KEY ("region_id") REFERENCES "public"."region" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."cart" ADD CONSTRAINT "FK_6b9c66b5e36f7c827dfaa092f94" FOREIGN KEY ("billing_address_id") REFERENCES "public"."address" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."cart" ADD CONSTRAINT "FK_9d1a161434c610aae7c3df2dc7e" FOREIGN KEY ("payment_id") REFERENCES "public"."payment" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."cart" ADD CONSTRAINT "FK_a2bd3c26f42e754b9249ba78fd6" FOREIGN KEY ("sales_channel_id") REFERENCES "public"."sales_channel" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."cart" ADD CONSTRAINT "FK_ced15a9a695d2b5db9dabce763d" FOREIGN KEY ("shipping_address_id") REFERENCES "public"."address" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table cart_discounts
-- ----------------------------
ALTER TABLE "public"."cart_discounts" ADD CONSTRAINT "FK_6680319ebe1f46d18f106191d59" FOREIGN KEY ("cart_id") REFERENCES "public"."cart" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE "public"."cart_discounts" ADD CONSTRAINT "FK_8df75ef4f35f217768dc1135458" FOREIGN KEY ("discount_id") REFERENCES "public"."discount" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table cart_gift_cards
-- ----------------------------
ALTER TABLE "public"."cart_gift_cards" ADD CONSTRAINT "FK_0fb38b6d167793192bc126d835e" FOREIGN KEY ("gift_card_id") REFERENCES "public"."gift_card" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE "public"."cart_gift_cards" ADD CONSTRAINT "FK_d38047a90f3d42f0be7909e8aea" FOREIGN KEY ("cart_id") REFERENCES "public"."cart" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table claim_image
-- ----------------------------
ALTER TABLE "public"."claim_image" ADD CONSTRAINT "FK_21cbfedd83d736d86f4c6f4ce56" FOREIGN KEY ("claim_item_id") REFERENCES "public"."claim_item" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table claim_item
-- ----------------------------
ALTER TABLE "public"."claim_item" ADD CONSTRAINT "FK_64980511ca32c8e92b417644afa" FOREIGN KEY ("variant_id") REFERENCES "public"."product_variant" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."claim_item" ADD CONSTRAINT "FK_6e0cad0daef76bb642675910b9d" FOREIGN KEY ("item_id") REFERENCES "public"."line_item" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."claim_item" ADD CONSTRAINT "FK_900a9c3834257304396b2b0fe7c" FOREIGN KEY ("claim_order_id") REFERENCES "public"."claim_order" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table claim_item_tags
-- ----------------------------
ALTER TABLE "public"."claim_item_tags" ADD CONSTRAINT "FK_c2c0f3edf39515bd15432afe6e5" FOREIGN KEY ("item_id") REFERENCES "public"."claim_item" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE "public"."claim_item_tags" ADD CONSTRAINT "FK_dc9bbf9fcb9ba458d25d512811b" FOREIGN KEY ("tag_id") REFERENCES "public"."claim_tag" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table claim_order
-- ----------------------------
ALTER TABLE "public"."claim_order" ADD CONSTRAINT "FK_017d58bf8260c6e1a2588d258e2" FOREIGN KEY ("shipping_address_id") REFERENCES "public"."address" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."claim_order" ADD CONSTRAINT "FK_f49e3974465d3c3a33d449d3f31" FOREIGN KEY ("order_id") REFERENCES "public"."order" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table country
-- ----------------------------
ALTER TABLE "public"."country" ADD CONSTRAINT "FK_b1aac8314662fa6b25569a575bb" FOREIGN KEY ("region_id") REFERENCES "public"."region" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table custom_shipping_option
-- ----------------------------
ALTER TABLE "public"."custom_shipping_option" ADD CONSTRAINT "FK_44090cb11b06174cbcc667e91ca" FOREIGN KEY ("shipping_option_id") REFERENCES "public"."shipping_option" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."custom_shipping_option" ADD CONSTRAINT "FK_93caeb1bb70d37c1d36d6701a7a" FOREIGN KEY ("cart_id") REFERENCES "public"."cart" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table customer
-- ----------------------------
ALTER TABLE "public"."customer" ADD CONSTRAINT "FK_8abe81b9aac151ae60bf507ad15" FOREIGN KEY ("billing_address_id") REFERENCES "public"."address" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table customer_group_customers
-- ----------------------------
ALTER TABLE "public"."customer_group_customers" ADD CONSTRAINT "FK_3c6412d076292f439269abe1a23" FOREIGN KEY ("customer_id") REFERENCES "public"."customer" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE "public"."customer_group_customers" ADD CONSTRAINT "FK_620330964db8d2999e67b0dbe3e" FOREIGN KEY ("customer_group_id") REFERENCES "public"."customer_group" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table discount
-- ----------------------------
ALTER TABLE "public"."discount" ADD CONSTRAINT "FK_2250c5d9e975987ab212f61a663" FOREIGN KEY ("parent_discount_id") REFERENCES "public"."discount" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."discount" ADD CONSTRAINT "FK_ac2c280de3701b2d66f6817f760" FOREIGN KEY ("rule_id") REFERENCES "public"."discount_rule" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table discount_condition
-- ----------------------------
ALTER TABLE "public"."discount_condition" ADD CONSTRAINT "FK_efff700651718e452ca9580a624" FOREIGN KEY ("discount_rule_id") REFERENCES "public"."discount_rule" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table discount_condition_customer_group
-- ----------------------------
ALTER TABLE "public"."discount_condition_customer_group" ADD CONSTRAINT "FK_4d5f98645a67545d8dea42e2eb8" FOREIGN KEY ("customer_group_id") REFERENCES "public"."customer_group" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE "public"."discount_condition_customer_group" ADD CONSTRAINT "FK_8486ee16e69013c645d0b8716b6" FOREIGN KEY ("condition_id") REFERENCES "public"."discount_condition" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table discount_condition_product
-- ----------------------------
ALTER TABLE "public"."discount_condition_product" ADD CONSTRAINT "FK_c759f53b2e48e8cfb50638fe4e0" FOREIGN KEY ("product_id") REFERENCES "public"."product" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE "public"."discount_condition_product" ADD CONSTRAINT "FK_f05132301e95bdab4ba1cf29a24" FOREIGN KEY ("condition_id") REFERENCES "public"."discount_condition" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table discount_condition_product_collection
-- ----------------------------
ALTER TABLE "public"."discount_condition_product_collection" ADD CONSTRAINT "FK_a0b05dc4257abe639cb75f8eae2" FOREIGN KEY ("product_collection_id") REFERENCES "public"."product_collection" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE "public"."discount_condition_product_collection" ADD CONSTRAINT "FK_a1c4f9cfb599ad1f0db39cadd5f" FOREIGN KEY ("condition_id") REFERENCES "public"."discount_condition" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table discount_condition_product_tag
-- ----------------------------
ALTER TABLE "public"."discount_condition_product_tag" ADD CONSTRAINT "FK_01486cc9dc6b36bf658685535f6" FOREIGN KEY ("product_tag_id") REFERENCES "public"."product_tag" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE "public"."discount_condition_product_tag" ADD CONSTRAINT "FK_fbb2499551ed074526f3ee36241" FOREIGN KEY ("condition_id") REFERENCES "public"."discount_condition" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table discount_condition_product_type
-- ----------------------------
ALTER TABLE "public"."discount_condition_product_type" ADD CONSTRAINT "FK_6ef23ce0b1d9cf9b5b833e52b9d" FOREIGN KEY ("condition_id") REFERENCES "public"."discount_condition" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE "public"."discount_condition_product_type" ADD CONSTRAINT "FK_e706deb68f52ab2756119b9e704" FOREIGN KEY ("product_type_id") REFERENCES "public"."product_type" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table discount_regions
-- ----------------------------
ALTER TABLE "public"."discount_regions" ADD CONSTRAINT "FK_a21a7ffbe420d492eb46c305fec" FOREIGN KEY ("region_id") REFERENCES "public"."region" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE "public"."discount_regions" ADD CONSTRAINT "FK_f4194aa81073f3fab8aa86906ff" FOREIGN KEY ("discount_id") REFERENCES "public"."discount" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table discount_rule_products
-- ----------------------------
ALTER TABLE "public"."discount_rule_products" ADD CONSTRAINT "FK_4e0739e5f0244c08d41174ca08a" FOREIGN KEY ("discount_rule_id") REFERENCES "public"."discount_rule" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE "public"."discount_rule_products" ADD CONSTRAINT "FK_be66106a673b88a81c603abe7eb" FOREIGN KEY ("product_id") REFERENCES "public"."product" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table draft_order
-- ----------------------------
ALTER TABLE "public"."draft_order" ADD CONSTRAINT "FK_5bd11d0e2a9628128e2c26fd0a6" FOREIGN KEY ("cart_id") REFERENCES "public"."cart" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."draft_order" ADD CONSTRAINT "FK_8f6dd6c49202f1466ebf21e77da" FOREIGN KEY ("order_id") REFERENCES "public"."order" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table fulfillment
-- ----------------------------
ALTER TABLE "public"."fulfillment" ADD CONSTRAINT "FK_a52e234f729db789cf473297a5c" FOREIGN KEY ("swap_id") REFERENCES "public"."swap" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."fulfillment" ADD CONSTRAINT "FK_beb35a6de60a6c4f91d5ae57e44" FOREIGN KEY ("provider_id") REFERENCES "public"."fulfillment_provider" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."fulfillment" ADD CONSTRAINT "FK_d73e55964e0ff2db8f03807d52e" FOREIGN KEY ("claim_order_id") REFERENCES "public"."claim_order" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."fulfillment" ADD CONSTRAINT "FK_f129acc85e346a10eed12b86fca" FOREIGN KEY ("order_id") REFERENCES "public"."order" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table fulfillment_item
-- ----------------------------
ALTER TABLE "public"."fulfillment_item" ADD CONSTRAINT "FK_a033f83cc6bd7701a5687ab4b38" FOREIGN KEY ("fulfillment_id") REFERENCES "public"."fulfillment" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."fulfillment_item" ADD CONSTRAINT "FK_e13ff60e74206b747a1896212d1" FOREIGN KEY ("item_id") REFERENCES "public"."line_item" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table gift_card
-- ----------------------------
ALTER TABLE "public"."gift_card" ADD CONSTRAINT "FK_b6bcf8c3903097b84e85154eed3" FOREIGN KEY ("region_id") REFERENCES "public"."region" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."gift_card" ADD CONSTRAINT "FK_dfc1f02bb0552e79076aa58dbb0" FOREIGN KEY ("order_id") REFERENCES "public"."order" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table gift_card_transaction
-- ----------------------------
ALTER TABLE "public"."gift_card_transaction" ADD CONSTRAINT "FK_3ff5597f1d7e02bba41541846f4" FOREIGN KEY ("gift_card_id") REFERENCES "public"."gift_card" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."gift_card_transaction" ADD CONSTRAINT "FK_d7d441b81012f87d4265fa57d24" FOREIGN KEY ("order_id") REFERENCES "public"."order" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table line_item
-- ----------------------------
ALTER TABLE "public"."line_item" ADD CONSTRAINT "FK_118e3c48f09a7728f41023c94ef" FOREIGN KEY ("claim_order_id") REFERENCES "public"."claim_order" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."line_item" ADD CONSTRAINT "FK_27283ee631862266d0f1c680646" FOREIGN KEY ("cart_id") REFERENCES "public"."cart" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."line_item" ADD CONSTRAINT "FK_3fa354d8d1233ff81097b2fcb6b" FOREIGN KEY ("swap_id") REFERENCES "public"."swap" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."line_item" ADD CONSTRAINT "FK_43a2b24495fe1d9fc2a9c835bc7" FOREIGN KEY ("order_id") REFERENCES "public"."order" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."line_item" ADD CONSTRAINT "FK_5371cbaa3be5200f373d24e3d5b" FOREIGN KEY ("variant_id") REFERENCES "public"."product_variant" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."line_item" ADD CONSTRAINT "line_item_order_edit_fk" FOREIGN KEY ("order_edit_id") REFERENCES "public"."order_edit" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."line_item" ADD CONSTRAINT "line_item_original_item_fk" FOREIGN KEY ("original_item_id") REFERENCES "public"."line_item" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table line_item_adjustment
-- ----------------------------
ALTER TABLE "public"."line_item_adjustment" ADD CONSTRAINT "FK_2f41b20a71f30e60471d7e3769c" FOREIGN KEY ("discount_id") REFERENCES "public"."discount" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."line_item_adjustment" ADD CONSTRAINT "FK_be9aea2ccf3567007b6227da4d2" FOREIGN KEY ("item_id") REFERENCES "public"."line_item" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table line_item_tax_line
-- ----------------------------
ALTER TABLE "public"."line_item_tax_line" ADD CONSTRAINT "FK_5077fa54b0d037e984385dfe8ad" FOREIGN KEY ("item_id") REFERENCES "public"."line_item" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table money_amount
-- ----------------------------
ALTER TABLE "public"."money_amount" ADD CONSTRAINT "FK_b433e27b7a83e6d12ab26b15b03" FOREIGN KEY ("region_id") REFERENCES "public"."region" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."money_amount" ADD CONSTRAINT "FK_e15811f81339e4bd8c440aebe1c" FOREIGN KEY ("currency_code") REFERENCES "public"."currency" ("code") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."money_amount" ADD CONSTRAINT "FK_f249976b079375499662eb80c40" FOREIGN KEY ("price_list_id") REFERENCES "public"."price_list" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table notification
-- ----------------------------
ALTER TABLE "public"."notification" ADD CONSTRAINT "FK_0425c2423e2ce9fdfd5c23761d9" FOREIGN KEY ("provider_id") REFERENCES "public"."notification_provider" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."notification" ADD CONSTRAINT "FK_371db513192c083f48ba63c33be" FOREIGN KEY ("parent_id") REFERENCES "public"."notification" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."notification" ADD CONSTRAINT "FK_b5df0f53a74b9d0c0a2b652c88d" FOREIGN KEY ("customer_id") REFERENCES "public"."customer" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table order
-- ----------------------------
ALTER TABLE "public"."order" ADD CONSTRAINT "FK_19b0c6293443d1b464f604c3316" FOREIGN KEY ("shipping_address_id") REFERENCES "public"."address" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."order" ADD CONSTRAINT "FK_5568d3b9ce9f7abeeb37511ecf2" FOREIGN KEY ("billing_address_id") REFERENCES "public"."address" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."order" ADD CONSTRAINT "FK_6ff7e874f01b478c115fdd462eb" FOREIGN KEY ("sales_channel_id") REFERENCES "public"."sales_channel" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."order" ADD CONSTRAINT "FK_717a141f96b76d794d409f38129" FOREIGN KEY ("currency_code") REFERENCES "public"."currency" ("code") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."order" ADD CONSTRAINT "FK_727b872f86c7378474a8fa46147" FOREIGN KEY ("draft_order_id") REFERENCES "public"."draft_order" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."order" ADD CONSTRAINT "FK_c99a206eb11ad45f6b7f04f2dcc" FOREIGN KEY ("cart_id") REFERENCES "public"."cart" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."order" ADD CONSTRAINT "FK_cd7812c96209c5bdd48a6b858b0" FOREIGN KEY ("customer_id") REFERENCES "public"."customer" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."order" ADD CONSTRAINT "FK_e1fcce2b18dbcdbe0a5ba9a68b8" FOREIGN KEY ("region_id") REFERENCES "public"."region" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table order_discounts
-- ----------------------------
ALTER TABLE "public"."order_discounts" ADD CONSTRAINT "FK_0fc1ec4e3db9001ad60c19daf16" FOREIGN KEY ("discount_id") REFERENCES "public"."discount" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE "public"."order_discounts" ADD CONSTRAINT "FK_e7b488cebe333f449398769b2cc" FOREIGN KEY ("order_id") REFERENCES "public"."order" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table order_edit
-- ----------------------------
ALTER TABLE "public"."order_edit" ADD CONSTRAINT "FK_1f3a251488a91510f57e1bf93cd" FOREIGN KEY ("order_id") REFERENCES "public"."order" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."order_edit" ADD CONSTRAINT "FK_order_edit_payment_collection_id" FOREIGN KEY ("payment_collection_id") REFERENCES "public"."payment_collection" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table order_gift_cards
-- ----------------------------
ALTER TABLE "public"."order_gift_cards" ADD CONSTRAINT "FK_e62ff11e4730bb3adfead979ee2" FOREIGN KEY ("order_id") REFERENCES "public"."order" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE "public"."order_gift_cards" ADD CONSTRAINT "FK_f2bb9f71e95b315eb24b2b84cb3" FOREIGN KEY ("gift_card_id") REFERENCES "public"."gift_card" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table order_item_change
-- ----------------------------
ALTER TABLE "public"."order_item_change" ADD CONSTRAINT "FK_44feeebb258bf4cfa4cc4202281" FOREIGN KEY ("order_edit_id") REFERENCES "public"."order_edit" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."order_item_change" ADD CONSTRAINT "FK_5f9688929761f7df108b630e64a" FOREIGN KEY ("line_item_id") REFERENCES "public"."line_item" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."order_item_change" ADD CONSTRAINT "FK_b4d53b8d03c9f5e7d4317e818d9" FOREIGN KEY ("original_line_item_id") REFERENCES "public"."line_item" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table payment
-- ----------------------------
ALTER TABLE "public"."payment" ADD CONSTRAINT "FK_4665f17abc1e81dd58330e58542" FOREIGN KEY ("cart_id") REFERENCES "public"."cart" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."payment" ADD CONSTRAINT "FK_c17aff091441b7c25ec3d68d36c" FOREIGN KEY ("swap_id") REFERENCES "public"."swap" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."payment" ADD CONSTRAINT "FK_f41553459a4b1491c9893ebc921" FOREIGN KEY ("currency_code") REFERENCES "public"."currency" ("code") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."payment" ADD CONSTRAINT "FK_f5221735ace059250daac9d9803" FOREIGN KEY ("order_id") REFERENCES "public"."order" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table payment_collection
-- ----------------------------
ALTER TABLE "public"."payment_collection" ADD CONSTRAINT "FK_payment_collection_region_id" FOREIGN KEY ("region_id") REFERENCES "public"."region" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table payment_collection_payments
-- ----------------------------
ALTER TABLE "public"."payment_collection_payments" ADD CONSTRAINT "FK_payment_collection_payments_payment_collection_id" FOREIGN KEY ("payment_collection_id") REFERENCES "public"."payment_collection" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE "public"."payment_collection_payments" ADD CONSTRAINT "FK_payment_collection_payments_payment_id" FOREIGN KEY ("payment_id") REFERENCES "public"."payment" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table payment_collection_sessions
-- ----------------------------
ALTER TABLE "public"."payment_collection_sessions" ADD CONSTRAINT "FK_payment_collection_sessions_payment_collection_id" FOREIGN KEY ("payment_collection_id") REFERENCES "public"."payment_collection" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE "public"."payment_collection_sessions" ADD CONSTRAINT "FK_payment_collection_sessions_payment_session_id" FOREIGN KEY ("payment_session_id") REFERENCES "public"."payment_session" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table payment_session
-- ----------------------------
ALTER TABLE "public"."payment_session" ADD CONSTRAINT "FK_d25ba0787e1510ddc5d442ebcfa" FOREIGN KEY ("cart_id") REFERENCES "public"."cart" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table price_list_customer_groups
-- ----------------------------
ALTER TABLE "public"."price_list_customer_groups" ADD CONSTRAINT "FK_52875734e9dd69064f0041f4d92" FOREIGN KEY ("price_list_id") REFERENCES "public"."price_list" ("id") ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE "public"."price_list_customer_groups" ADD CONSTRAINT "FK_c5516f550433c9b1c2630d787a7" FOREIGN KEY ("customer_group_id") REFERENCES "public"."customer_group" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table product
-- ----------------------------
ALTER TABLE "public"."product" ADD CONSTRAINT "FK_49d419fc77d3aed46c835c558ac" FOREIGN KEY ("collection_id") REFERENCES "public"."product_collection" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."product" ADD CONSTRAINT "FK_e0843930fbb8854fe36ca39dae1" FOREIGN KEY ("type_id") REFERENCES "public"."product_type" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table product_category_product
-- ----------------------------
ALTER TABLE "public"."product_category_product" ADD CONSTRAINT "FK_product_category_id" FOREIGN KEY ("product_category_id") REFERENCES "public"."product_category" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE "public"."product_category_product" ADD CONSTRAINT "FK_product_id" FOREIGN KEY ("product_id") REFERENCES "public"."product" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table product_images
-- ----------------------------
ALTER TABLE "public"."product_images" ADD CONSTRAINT "FK_2212515ba306c79f42c46a99db7" FOREIGN KEY ("image_id") REFERENCES "public"."image" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE "public"."product_images" ADD CONSTRAINT "FK_4f166bb8c2bfcef2498d97b4068" FOREIGN KEY ("product_id") REFERENCES "public"."product" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table product_option
-- ----------------------------
ALTER TABLE "public"."product_option" ADD CONSTRAINT "FK_e634fca34f6b594b87fdbee95f6" FOREIGN KEY ("product_id") REFERENCES "public"."product" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table product_option_value
-- ----------------------------
ALTER TABLE "public"."product_option_value" ADD CONSTRAINT "FK_7234ed737ff4eb1b6ae6e6d7b01" FOREIGN KEY ("variant_id") REFERENCES "public"."product_variant" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE "public"."product_option_value" ADD CONSTRAINT "FK_cdf4388f294b30a25c627d69fe9" FOREIGN KEY ("option_id") REFERENCES "public"."product_option" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table product_sales_channel
-- ----------------------------
ALTER TABLE "public"."product_sales_channel" ADD CONSTRAINT "FK_37341bad297fe5cca91f921032b" FOREIGN KEY ("sales_channel_id") REFERENCES "public"."sales_channel" ("id") ON DELETE CASCADE ON UPDATE CASCADE;

-- ----------------------------
-- Foreign Keys structure for table product_tags
-- ----------------------------
ALTER TABLE "public"."product_tags" ADD CONSTRAINT "FK_21683a063fe82dafdf681ecc9c4" FOREIGN KEY ("product_tag_id") REFERENCES "public"."product_tag" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE "public"."product_tags" ADD CONSTRAINT "FK_5b0c6fc53c574299ecc7f9ee22e" FOREIGN KEY ("product_id") REFERENCES "public"."product" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table product_tax_rate
-- ----------------------------
ALTER TABLE "public"."product_tax_rate" ADD CONSTRAINT "FK_1d04aebeabb6a89f87e536a124d" FOREIGN KEY ("product_id") REFERENCES "public"."product" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE "public"."product_tax_rate" ADD CONSTRAINT "FK_2484cf14c437a04586b07e7dddb" FOREIGN KEY ("rate_id") REFERENCES "public"."tax_rate" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table product_type_tax_rate
-- ----------------------------
ALTER TABLE "public"."product_type_tax_rate" ADD CONSTRAINT "FK_25a3138bb236f63d9bb6c8ff111" FOREIGN KEY ("product_type_id") REFERENCES "public"."product_type" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE "public"."product_type_tax_rate" ADD CONSTRAINT "FK_ece65a774192b34253abc4cd672" FOREIGN KEY ("rate_id") REFERENCES "public"."tax_rate" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table product_variant
-- ----------------------------
ALTER TABLE "public"."product_variant" ADD CONSTRAINT "FK_ca67dd080aac5ecf99609960cd2" FOREIGN KEY ("product_id") REFERENCES "public"."product" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table refund
-- ----------------------------
ALTER TABLE "public"."refund" ADD CONSTRAINT "FK_eec9d9af4ca098e19ea6b499eaa" FOREIGN KEY ("order_id") REFERENCES "public"."order" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."refund" ADD CONSTRAINT "FK_refund_payment_id" FOREIGN KEY ("payment_id") REFERENCES "public"."payment" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table region
-- ----------------------------
ALTER TABLE "public"."region" ADD CONSTRAINT "FK_3bdd5896ec93be2f1c62a3309a5" FOREIGN KEY ("currency_code") REFERENCES "public"."currency" ("code") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."region" ADD CONSTRAINT "FK_91f88052197680f9790272aaf5b" FOREIGN KEY ("tax_provider_id") REFERENCES "public"."tax_provider" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table region_fulfillment_providers
-- ----------------------------
ALTER TABLE "public"."region_fulfillment_providers" ADD CONSTRAINT "FK_37f361c38a18d12a3fa3158d0cf" FOREIGN KEY ("provider_id") REFERENCES "public"."fulfillment_provider" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE "public"."region_fulfillment_providers" ADD CONSTRAINT "FK_c556e14eff4d6f03db593df955e" FOREIGN KEY ("region_id") REFERENCES "public"."region" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table region_payment_providers
-- ----------------------------
ALTER TABLE "public"."region_payment_providers" ADD CONSTRAINT "FK_3a6947180aeec283cd92c59ebb0" FOREIGN KEY ("provider_id") REFERENCES "public"."payment_provider" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE "public"."region_payment_providers" ADD CONSTRAINT "FK_8aaa78ba90d3802edac317df869" FOREIGN KEY ("region_id") REFERENCES "public"."region" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table return
-- ----------------------------
ALTER TABLE "public"."return" ADD CONSTRAINT "FK_71773d56eb2bacb922bc3283398" FOREIGN KEY ("claim_order_id") REFERENCES "public"."claim_order" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."return" ADD CONSTRAINT "FK_bad82d7bff2b08b87094bfac3d6" FOREIGN KEY ("swap_id") REFERENCES "public"."swap" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."return" ADD CONSTRAINT "FK_d4bd17f918fc6c332b74a368c36" FOREIGN KEY ("order_id") REFERENCES "public"."order" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table return_item
-- ----------------------------
ALTER TABLE "public"."return_item" ADD CONSTRAINT "FK_7edab75b4fc88ea6d4f2574f087" FOREIGN KEY ("return_id") REFERENCES "public"."return" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."return_item" ADD CONSTRAINT "FK_87774591f44564effd8039d7162" FOREIGN KEY ("item_id") REFERENCES "public"."line_item" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."return_item" ADD CONSTRAINT "FK_d742532378a65022e7ceb328828" FOREIGN KEY ("reason_id") REFERENCES "public"."return_reason" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table return_reason
-- ----------------------------
ALTER TABLE "public"."return_reason" ADD CONSTRAINT "FK_2250c5d9e975987ab212f61a657" FOREIGN KEY ("parent_return_reason_id") REFERENCES "public"."return_reason" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table shipping_method
-- ----------------------------
ALTER TABLE "public"."shipping_method" ADD CONSTRAINT "FK_1d9ad62038998c3a85c77a53cfb" FOREIGN KEY ("return_id") REFERENCES "public"."return" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."shipping_method" ADD CONSTRAINT "FK_5267705a43d547e232535b656c2" FOREIGN KEY ("order_id") REFERENCES "public"."order" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."shipping_method" ADD CONSTRAINT "FK_d783a66d1c91c0858752c933e68" FOREIGN KEY ("claim_order_id") REFERENCES "public"."claim_order" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."shipping_method" ADD CONSTRAINT "FK_d92993a7d554d84571f4eea1d13" FOREIGN KEY ("cart_id") REFERENCES "public"."cart" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."shipping_method" ADD CONSTRAINT "FK_fb94fa8d5ca940daa2a58139f86" FOREIGN KEY ("swap_id") REFERENCES "public"."swap" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."shipping_method" ADD CONSTRAINT "FK_fc963e94854bff2714ca84cd193" FOREIGN KEY ("shipping_option_id") REFERENCES "public"."shipping_option" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table shipping_method_tax_line
-- ----------------------------
ALTER TABLE "public"."shipping_method_tax_line" ADD CONSTRAINT "FK_926ca9f29014af8091722dede08" FOREIGN KEY ("shipping_method_id") REFERENCES "public"."shipping_method" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table shipping_option
-- ----------------------------
ALTER TABLE "public"."shipping_option" ADD CONSTRAINT "FK_5c58105f1752fca0f4ce69f4663" FOREIGN KEY ("region_id") REFERENCES "public"."region" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."shipping_option" ADD CONSTRAINT "FK_a0e206bfaed3cb63c1860917347" FOREIGN KEY ("provider_id") REFERENCES "public"."fulfillment_provider" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."shipping_option" ADD CONSTRAINT "FK_c951439af4c98bf2bd7fb8726cd" FOREIGN KEY ("profile_id") REFERENCES "public"."shipping_profile" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table shipping_option_requirement
-- ----------------------------
ALTER TABLE "public"."shipping_option_requirement" ADD CONSTRAINT "FK_012a62ba743e427b5ebe9dee18e" FOREIGN KEY ("shipping_option_id") REFERENCES "public"."shipping_option" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table shipping_tax_rate
-- ----------------------------
ALTER TABLE "public"."shipping_tax_rate" ADD CONSTRAINT "FK_346e0016cf045b9980747747645" FOREIGN KEY ("rate_id") REFERENCES "public"."tax_rate" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE "public"."shipping_tax_rate" ADD CONSTRAINT "FK_f672727ab020df6c50fb64c1a70" FOREIGN KEY ("shipping_option_id") REFERENCES "public"."shipping_option" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table store
-- ----------------------------
ALTER TABLE "public"."store" ADD CONSTRAINT "FK_55beebaa09e947cccca554af222" FOREIGN KEY ("default_currency_code") REFERENCES "public"."currency" ("code") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."store" ADD CONSTRAINT "FK_61b0f48cccbb5f41c750bac7286" FOREIGN KEY ("default_sales_channel_id") REFERENCES "public"."sales_channel" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table store_currencies
-- ----------------------------
ALTER TABLE "public"."store_currencies" ADD CONSTRAINT "FK_82a6bbb0b527c20a0002ddcbd60" FOREIGN KEY ("currency_code") REFERENCES "public"."currency" ("code") ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE "public"."store_currencies" ADD CONSTRAINT "FK_b4f4b63d1736689b7008980394c" FOREIGN KEY ("store_id") REFERENCES "public"."store" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table swap
-- ----------------------------
ALTER TABLE "public"."swap" ADD CONSTRAINT "FK_402e8182bc553e082f6380020b4" FOREIGN KEY ("cart_id") REFERENCES "public"."cart" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."swap" ADD CONSTRAINT "FK_52dd74e8c989aa5665ad2852b8b" FOREIGN KEY ("order_id") REFERENCES "public"."order" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."swap" ADD CONSTRAINT "FK_f5189d38b3d3bd496618bf54c57" FOREIGN KEY ("shipping_address_id") REFERENCES "public"."address" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table tax_rate
-- ----------------------------
ALTER TABLE "public"."tax_rate" ADD CONSTRAINT "FK_b95a1e03b051993d208366cb960" FOREIGN KEY ("region_id") REFERENCES "public"."region" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table tracking_link
-- ----------------------------
ALTER TABLE "public"."tracking_link" ADD CONSTRAINT "FK_471e9e4c96e02ba209a307db32b" FOREIGN KEY ("fulfillment_id") REFERENCES "public"."fulfillment" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
