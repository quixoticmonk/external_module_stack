deployment "dev" {
    inputs ={
        bucket_name         ="manu-s3-bucket-2024"
        region              = "us-east-1"
        role_arn            = "arn:aws:iam::697621333100:role/stack_role"
        identity_token_file = identity_token.aws.jwt_filename
    }
}

identity_token "aws" {

    audience =["aws.workload.identity"]
}
