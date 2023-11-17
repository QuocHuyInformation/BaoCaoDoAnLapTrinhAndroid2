import React from "react";
import {
  List,
  Datagrid,
  TextField,
  // Edit,
  // SimpleForm,
  EditButton,
  // TextInput,
  // NumberInput,
  // Create,
} from "react-admin";






export const ListUser = (props) => (
    <List {...props}>
      <Datagrid style={{ overflowX: "auto" }}>
        <TextField source="id" />
        <TextField source="name" />
        <TextField source="email" />
        <TextField source="phone" />
        <TextField source="username" />
        <TextField source="password" />
        <EditButton />
      </Datagrid>
    </List>
  );
  // export const editUser = (props) => {
  //   return (
  //     <Edit {...props}>
  //       <SimpleForm>
  //         <TextInput source="name" />
  //         <TextInput source="email" />
  //         <NumberInput source="phone" />
  //         <TextInput source="username" />
  //         <TextInput source="password" />
  //       </SimpleForm>
  //     </Edit>
  //   );
  // };
  // export const createUser = (props) => (
  //   <Create {...props}>
  //     <SimpleForm>
  //     <TextInput source="name" />
  //         <TextInput source="email" />
  //         <NumberInput source="phone" />
  //         <TextInput source="username" />
  //         <TextInput source="password" />
  //     </SimpleForm>
  //   </Create>
  // );
  